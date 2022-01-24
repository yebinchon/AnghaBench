#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int /*<<< orphan*/  ss_len; } ;
struct sockaddr {int dummy; } ;
struct TYPE_6__ {scalar_t__ rmx_sendpipe; scalar_t__ rmx_recvpipe; } ;
struct TYPE_10__ {int rtm_type; int rtm_flags; int rtm_msglen; scalar_t__ rtm_errno; int /*<<< orphan*/  rtm_addrs; int /*<<< orphan*/  rtm_inits; TYPE_1__ rtm_rmx; int /*<<< orphan*/  rtm_pid; scalar_t__ rtm_seq; int /*<<< orphan*/  rtm_version; } ;
struct rtmsg {char* m_space; TYPE_5__ m_rtm; } ;
struct ncprange {int dummy; } ;
struct ncpaddr {int dummy; } ;
struct TYPE_7__ {scalar_t__ sendpipe; scalar_t__ recvpipe; } ;
struct TYPE_8__ {TYPE_2__ cfg; } ;
struct bundle {TYPE_4__* iface; TYPE_3__ ncp; scalar_t__ routing_seq; } ;
struct TYPE_9__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ ENETUNREACH ; 
 scalar_t__ ESRCH ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct rtmsg*,int) ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogTCPIP ; 
 int /*<<< orphan*/  LogWARN ; 
 int NCP_ASCIIBUFFERSIZE ; 
 int /*<<< orphan*/  PF_ROUTE ; 
 int /*<<< orphan*/  RTA_DST ; 
 int /*<<< orphan*/  RTA_GATEWAY ; 
 int /*<<< orphan*/  RTA_NETMASK ; 
 int RTF_GATEWAY ; 
 int RTF_HOST ; 
 int RTF_STATIC ; 
 int RTF_UP ; 
 int RTM_ADD ; 
 int RTM_CHANGE ; 
 int RTM_DELETE ; 
 int /*<<< orphan*/  RTM_VERSION ; 
 int /*<<< orphan*/  RTV_RPIPE ; 
 int /*<<< orphan*/  RTV_SPIPE ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtmsg*,char,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ncpaddr const*,struct sockaddr_storage*) ; 
 scalar_t__ FUNC10 (struct ncpaddr const*) ; 
 char* FUNC11 (struct ncpaddr const*) ; 
 int /*<<< orphan*/  FUNC12 (struct ncprange const*,struct sockaddr_storage*,struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC13 (struct ncprange const*) ; 
 int /*<<< orphan*/  FUNC14 (struct ncprange const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 

int
FUNC17(struct bundle *bundle, int cmd, const struct ncprange *dst,
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
  s = FUNC0(PF_ROUTE, SOCK_RAW, 0);
  if (s < 0) {
    FUNC6(LogERROR, "rt_Set: socket(): %s\n", FUNC16(errno));
    return result;
  }
  FUNC8(&rtmes, '\0', sizeof rtmes);
  rtmes.m_rtm.rtm_version = RTM_VERSION;
  rtmes.m_rtm.rtm_type = cmd;
  rtmes.m_rtm.rtm_addrs = RTA_DST;
  rtmes.m_rtm.rtm_seq = ++bundle->routing_seq;
  rtmes.m_rtm.rtm_pid = FUNC4();
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

  FUNC12(dst, &sadst, &samask);
#if defined(__KAME__) && !defined(NOINET6)
  add_scope((struct sockaddr *)&sadst, bundle->iface->index);
#endif

  cp = rtmes.m_space;
  cp += FUNC7(cp, &sadst, sadst.ss_len);
  if (cmd == RTM_ADD) {
    if (gw == NULL) {
      FUNC6(LogERROR, "rt_Set: Program error\n");
      FUNC3(s);
      return result;
    }
    FUNC9(gw, &sagw);
#if defined(__KAME__) && !defined(NOINET6)
    add_scope((struct sockaddr *)&sagw, bundle->iface->index);
#endif
    if (FUNC10(gw)) {
      if (!quiet)
        FUNC6(LogERROR, "rt_Set: Cannot add a route with"
                   " gateway 0.0.0.0\n");
      FUNC3(s);
      return result;
    } else {
      cp += FUNC7(cp, &sagw, sagw.ss_len);
      rtmes.m_rtm.rtm_addrs |= RTA_GATEWAY;
    }
  }

  if (!FUNC13(dst)) {
    cp += FUNC7(cp, &samask, samask.ss_len);
    rtmes.m_rtm.rtm_addrs |= RTA_NETMASK;
  } else
    rtmes.m_rtm.rtm_flags |= RTF_HOST;

  nb = cp - (char *)&rtmes;
  rtmes.m_rtm.rtm_msglen = nb;
  wb = FUNC1(s, &rtmes, nb);
  if (wb < 0) {
    FUNC6(LogTCPIP, "rt_Set failure:\n");
    FUNC6(LogTCPIP, "rt_Set:  Cmd = %s\n", cmdstr);
    FUNC6(LogTCPIP, "rt_Set:  Dst = %s\n", FUNC14(dst));
    if (gw != NULL)
      FUNC6(LogTCPIP, "rt_Set:  Gateway = %s\n", FUNC11(gw));
failed:
    if (cmd == RTM_ADD && (rtmes.m_rtm.rtm_errno == EEXIST ||
                           (rtmes.m_rtm.rtm_errno == 0 && errno == EEXIST))) {
      if (!bang) {
        FUNC6(LogWARN, "Add route failed: %s already exists\n",
		   FUNC14(dst));
        result = 0;	/* Don't add to our dynamic list */
      } else {
        rtmes.m_rtm.rtm_type = cmd = RTM_CHANGE;
        if ((wb = FUNC1(s, &rtmes, nb)) < 0)
          goto failed;
      }
    } else if (cmd == RTM_DELETE &&
             (rtmes.m_rtm.rtm_errno == ESRCH ||
              (rtmes.m_rtm.rtm_errno == 0 && errno == ESRCH))) {
      if (!bang)
        FUNC6(LogWARN, "Del route failed: %s: Non-existent\n",
                  FUNC14(dst));
    } else if (rtmes.m_rtm.rtm_errno == 0) {
      if (!quiet || errno != ENETUNREACH)
        FUNC6(LogWARN, "%s route failed: %s: errno: %s\n", cmdstr,
                   FUNC14(dst), FUNC16(errno));
    } else
      FUNC6(LogWARN, "%s route failed: %s: %s\n",
		 cmdstr, FUNC14(dst), FUNC16(rtmes.m_rtm.rtm_errno));
  }

  if (FUNC5(LogDEBUG)) {
    char gwstr[NCP_ASCIIBUFFERSIZE];

    if (gw)
      FUNC15(gwstr, sizeof gwstr, "%s", FUNC11(gw));
    else
      FUNC15(gwstr, sizeof gwstr, "<none>");
    FUNC6(LogDEBUG, "wrote %d: cmd = %s, dst = %s, gateway = %s\n",
               wb, cmdstr, FUNC14(dst), gwstr);
  }
  FUNC3(s);

  return result;
}