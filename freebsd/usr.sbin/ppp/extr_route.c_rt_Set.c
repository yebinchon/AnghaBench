
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_storage {int ss_len; } ;
struct sockaddr {int dummy; } ;
struct TYPE_6__ {scalar_t__ rmx_sendpipe; scalar_t__ rmx_recvpipe; } ;
struct TYPE_10__ {int rtm_type; int rtm_flags; int rtm_msglen; scalar_t__ rtm_errno; int rtm_addrs; int rtm_inits; TYPE_1__ rtm_rmx; int rtm_pid; scalar_t__ rtm_seq; int rtm_version; } ;
struct rtmsg {char* m_space; TYPE_5__ m_rtm; } ;
struct ncprange {int dummy; } ;
struct ncpaddr {int dummy; } ;
struct TYPE_7__ {scalar_t__ sendpipe; scalar_t__ recvpipe; } ;
struct TYPE_8__ {TYPE_2__ cfg; } ;
struct bundle {TYPE_4__* iface; TYPE_3__ ncp; scalar_t__ routing_seq; } ;
struct TYPE_9__ {int index; } ;


 scalar_t__ EEXIST ;
 scalar_t__ ENETUNREACH ;
 scalar_t__ ESRCH ;
 int ID0socket (int ,int ,int ) ;
 int ID0write (int,struct rtmsg*,int) ;
 int LogDEBUG ;
 int LogERROR ;
 int LogTCPIP ;
 int LogWARN ;
 int NCP_ASCIIBUFFERSIZE ;
 int PF_ROUTE ;
 int RTA_DST ;
 int RTA_GATEWAY ;
 int RTA_NETMASK ;
 int RTF_GATEWAY ;
 int RTF_HOST ;
 int RTF_STATIC ;
 int RTF_UP ;
 int RTM_ADD ;
 int RTM_CHANGE ;
 int RTM_DELETE ;
 int RTM_VERSION ;
 int RTV_RPIPE ;
 int RTV_SPIPE ;
 int SOCK_RAW ;
 int add_scope (struct sockaddr*,int ) ;
 int close (int) ;
 scalar_t__ errno ;
 int getpid () ;
 scalar_t__ log_IsKept (int ) ;
 int log_Printf (int ,char*,...) ;
 int memcpy_roundup (char*,struct sockaddr_storage*,int ) ;
 int memset (struct rtmsg*,char,int) ;
 int ncpaddr_getsa (struct ncpaddr const*,struct sockaddr_storage*) ;
 scalar_t__ ncpaddr_isdefault (struct ncpaddr const*) ;
 char* ncpaddr_ntoa (struct ncpaddr const*) ;
 int ncprange_getsa (struct ncprange const*,struct sockaddr_storage*,struct sockaddr_storage*) ;
 int ncprange_ishost (struct ncprange const*) ;
 int ncprange_ntoa (struct ncprange const*) ;
 int snprintf (char*,int,char*,...) ;
 int strerror (scalar_t__) ;

int
rt_Set(struct bundle *bundle, int cmd, const struct ncprange *dst,
       const struct ncpaddr *gw, int bang, int quiet)
{
  struct rtmsg rtmes;
  int s, nb, wb;
  char *cp;
  const char *cmdstr;
  struct sockaddr_storage sadst, samask, sagw;
  int result = 1;

  if (bang)
    cmdstr = (cmd == RTM_ADD ? "Add!" : "Delete!");
  else
    cmdstr = (cmd == RTM_ADD ? "Add" : "Delete");
  s = ID0socket(PF_ROUTE, SOCK_RAW, 0);
  if (s < 0) {
    log_Printf(LogERROR, "rt_Set: socket(): %s\n", strerror(errno));
    return result;
  }
  memset(&rtmes, '\0', sizeof rtmes);
  rtmes.m_rtm.rtm_version = RTM_VERSION;
  rtmes.m_rtm.rtm_type = cmd;
  rtmes.m_rtm.rtm_addrs = RTA_DST;
  rtmes.m_rtm.rtm_seq = ++bundle->routing_seq;
  rtmes.m_rtm.rtm_pid = getpid();
  rtmes.m_rtm.rtm_flags = RTF_UP | RTF_GATEWAY | RTF_STATIC;

  if (cmd == RTM_ADD) {
    if (bundle->ncp.cfg.sendpipe > 0) {
      rtmes.m_rtm.rtm_rmx.rmx_sendpipe = bundle->ncp.cfg.sendpipe;
      rtmes.m_rtm.rtm_inits |= RTV_SPIPE;
    }
    if (bundle->ncp.cfg.recvpipe > 0) {
      rtmes.m_rtm.rtm_rmx.rmx_recvpipe = bundle->ncp.cfg.recvpipe;
      rtmes.m_rtm.rtm_inits |= RTV_RPIPE;
    }
  }

  ncprange_getsa(dst, &sadst, &samask);




  cp = rtmes.m_space;
  cp += memcpy_roundup(cp, &sadst, sadst.ss_len);
  if (cmd == RTM_ADD) {
    if (gw == ((void*)0)) {
      log_Printf(LogERROR, "rt_Set: Program error\n");
      close(s);
      return result;
    }
    ncpaddr_getsa(gw, &sagw);



    if (ncpaddr_isdefault(gw)) {
      if (!quiet)
        log_Printf(LogERROR, "rt_Set: Cannot add a route with"
                   " gateway 0.0.0.0\n");
      close(s);
      return result;
    } else {
      cp += memcpy_roundup(cp, &sagw, sagw.ss_len);
      rtmes.m_rtm.rtm_addrs |= RTA_GATEWAY;
    }
  }

  if (!ncprange_ishost(dst)) {
    cp += memcpy_roundup(cp, &samask, samask.ss_len);
    rtmes.m_rtm.rtm_addrs |= RTA_NETMASK;
  } else
    rtmes.m_rtm.rtm_flags |= RTF_HOST;

  nb = cp - (char *)&rtmes;
  rtmes.m_rtm.rtm_msglen = nb;
  wb = ID0write(s, &rtmes, nb);
  if (wb < 0) {
    log_Printf(LogTCPIP, "rt_Set failure:\n");
    log_Printf(LogTCPIP, "rt_Set:  Cmd = %s\n", cmdstr);
    log_Printf(LogTCPIP, "rt_Set:  Dst = %s\n", ncprange_ntoa(dst));
    if (gw != ((void*)0))
      log_Printf(LogTCPIP, "rt_Set:  Gateway = %s\n", ncpaddr_ntoa(gw));
failed:
    if (cmd == RTM_ADD && (rtmes.m_rtm.rtm_errno == EEXIST ||
                           (rtmes.m_rtm.rtm_errno == 0 && errno == EEXIST))) {
      if (!bang) {
        log_Printf(LogWARN, "Add route failed: %s already exists\n",
     ncprange_ntoa(dst));
        result = 0;
      } else {
        rtmes.m_rtm.rtm_type = cmd = RTM_CHANGE;
        if ((wb = ID0write(s, &rtmes, nb)) < 0)
          goto failed;
      }
    } else if (cmd == RTM_DELETE &&
             (rtmes.m_rtm.rtm_errno == ESRCH ||
              (rtmes.m_rtm.rtm_errno == 0 && errno == ESRCH))) {
      if (!bang)
        log_Printf(LogWARN, "Del route failed: %s: Non-existent\n",
                  ncprange_ntoa(dst));
    } else if (rtmes.m_rtm.rtm_errno == 0) {
      if (!quiet || errno != ENETUNREACH)
        log_Printf(LogWARN, "%s route failed: %s: errno: %s\n", cmdstr,
                   ncprange_ntoa(dst), strerror(errno));
    } else
      log_Printf(LogWARN, "%s route failed: %s: %s\n",
   cmdstr, ncprange_ntoa(dst), strerror(rtmes.m_rtm.rtm_errno));
  }

  if (log_IsKept(LogDEBUG)) {
    char gwstr[NCP_ASCIIBUFFERSIZE];

    if (gw)
      snprintf(gwstr, sizeof gwstr, "%s", ncpaddr_ntoa(gw));
    else
      snprintf(gwstr, sizeof gwstr, "<none>");
    log_Printf(LogDEBUG, "wrote %d: cmd = %s, dst = %s, gateway = %s\n",
               wb, cmdstr, ncprange_ntoa(dst), gwstr);
  }
  close(s);

  return result;
}
