
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int16_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct ngpppoe_sts {char* hook; } ;
struct TYPE_2__ {scalar_t__ version; scalar_t__ typecookie; int cmd; int arglen; } ;
struct ng_mesg {TYPE_1__ header; } ;
struct etherdevice {scalar_t__ cs; int connected; int slot; } ;
typedef int fd_set ;


 int CARRIER_LOST ;
 int CARRIER_OK ;
 int FD_SET (scalar_t__,int *) ;
 int LOG_WARNING ;
 int LogERROR ;
 int LogPHASE ;
 int LogWARN ;



 scalar_t__ NGM_PPPOE_COOKIE ;







 scalar_t__ NG_VERSION ;
 scalar_t__ NgRecvMsg (scalar_t__,struct ng_mesg*,int,int *) ;
 int free (int *) ;
 int log_Printf (int ,char*,...) ;
 int * mkfdset () ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int setenv (char*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int strtoul (char*,char**,int) ;
 int syslog (int ,char*,char*) ;
 int zerofdset (int *) ;

__attribute__((used)) static void
ether_MessageIn(struct etherdevice *dev)
{
  char msgbuf[sizeof(struct ng_mesg) + sizeof(struct ngpppoe_sts)];
  struct ng_mesg *rep = (struct ng_mesg *)msgbuf;
  struct ngpppoe_sts *sts = (struct ngpppoe_sts *)(msgbuf + sizeof *rep);
  char *end, unknown[14], sessionid[5];
  const char *msg;
  struct timeval t;
  fd_set *r;
  u_long slot;
  int asciilen, ret;

  if (dev->cs < 0)
    return;

  if ((r = mkfdset()) == ((void*)0)) {
    log_Printf(LogERROR, "DoLoop: Cannot create fd_set\n");
    return;
  }

  while (1) {
    zerofdset(r);
    FD_SET(dev->cs, r);
    t.tv_sec = t.tv_usec = 0;
    ret = select(dev->cs + 1, r, ((void*)0), ((void*)0), &t);

    if (ret <= 0)
      break;

    if (NgRecvMsg(dev->cs, rep, sizeof msgbuf, ((void*)0)) <= 0)
      break;

    if (rep->header.version != NG_VERSION) {
      log_Printf(LogWARN, "%ld: Unexpected netgraph version, expected %ld\n",
                 (long)rep->header.version, (long)NG_VERSION);
      break;
    }

    if (rep->header.typecookie != NGM_PPPOE_COOKIE) {
      log_Printf(LogWARN, "%ld: Unexpected netgraph cookie, expected %ld\n",
                 (long)rep->header.typecookie, (long)NGM_PPPOE_COOKIE);
      break;
    }

    asciilen = 0;
    switch (rep->header.cmd) {
      case 129: msg = "SET_FLAG"; break;
      case 135: msg = "CONNECT"; break;
      case 132: msg = "LISTEN"; break;
      case 131: msg = "OFFER"; break;
      case 128: msg = "SUCCESS"; break;
      case 134: msg = "FAIL"; break;
      case 136: msg = "CLOSE"; break;
      case 133: msg = "GET_STATUS"; break;
      case 137:
        msg = "ACNAME";
        if (setenv("ACNAME", sts->hook, 1) != 0)
          log_Printf(LogWARN, "setenv: cannot set ACNAME=%s: %m", sts->hook);
        asciilen = rep->header.arglen;
        break;
      case 130:
        msg = "SESSIONID";
        snprintf(sessionid, sizeof sessionid, "%04x", *(u_int16_t *)sts);
        if (setenv("SESSIONID", sessionid, 1) != 0)
          syslog(LOG_WARNING, "setenv: cannot set SESSIONID=%s: %m",
                 sessionid);

        slot = strtoul(sessionid, &end, 16);
        if (end != sessionid && *end == '\0')
            dev->slot = slot;
        break;
      default:
        snprintf(unknown, sizeof unknown, "<%d>", (int)rep->header.cmd);
        msg = unknown;
        break;
    }

    if (asciilen)
      log_Printf(LogPHASE, "Received NGM_PPPOE_%s (hook \"%.*s\")\n",
                 msg, asciilen, sts->hook);
    else
      log_Printf(LogPHASE, "Received NGM_PPPOE_%s\n", msg);

    switch (rep->header.cmd) {
      case 128:
        dev->connected = CARRIER_OK;
        break;
      case 134:
      case 136:
        dev->connected = CARRIER_LOST;
        break;
    }
  }
  free(r);
}
