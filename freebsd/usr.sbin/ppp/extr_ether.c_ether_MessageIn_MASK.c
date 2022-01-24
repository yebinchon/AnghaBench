#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_int16_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct ngpppoe_sts {char* hook; } ;
struct TYPE_2__ {scalar_t__ version; scalar_t__ typecookie; int cmd; int arglen; } ;
struct ng_mesg {TYPE_1__ header; } ;
struct etherdevice {scalar_t__ cs; int /*<<< orphan*/  connected; int /*<<< orphan*/  slot; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  CARRIER_LOST ; 
 int /*<<< orphan*/  CARRIER_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  LogWARN ; 
#define  NGM_PPPOE_ACNAME 137 
#define  NGM_PPPOE_CLOSE 136 
#define  NGM_PPPOE_CONNECT 135 
 scalar_t__ NGM_PPPOE_COOKIE ; 
#define  NGM_PPPOE_FAIL 134 
#define  NGM_PPPOE_GET_STATUS 133 
#define  NGM_PPPOE_LISTEN 132 
#define  NGM_PPPOE_OFFER 131 
#define  NGM_PPPOE_SESSIONID 130 
#define  NGM_PPPOE_SET_FLAG 129 
#define  NGM_PPPOE_SUCCESS 128 
 scalar_t__ NG_VERSION ; 
 scalar_t__ FUNC1 (scalar_t__,struct ng_mesg*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct etherdevice *dev)
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

  if ((r = FUNC4()) == NULL) {
    FUNC3(LogERROR, "DoLoop: Cannot create fd_set\n");
    return;
  }

  while (1) {
    FUNC10(r);
    FUNC0(dev->cs, r);
    t.tv_sec = t.tv_usec = 0;
    ret = FUNC5(dev->cs + 1, r, NULL, NULL, &t);

    if (ret <= 0)
      break;

    if (FUNC1(dev->cs, rep, sizeof msgbuf, NULL) <= 0)
      break;

    if (rep->header.version != NG_VERSION) {
      FUNC3(LogWARN, "%ld: Unexpected netgraph version, expected %ld\n",
                 (long)rep->header.version, (long)NG_VERSION);
      break;
    }

    if (rep->header.typecookie != NGM_PPPOE_COOKIE) {
      FUNC3(LogWARN, "%ld: Unexpected netgraph cookie, expected %ld\n",
                 (long)rep->header.typecookie, (long)NGM_PPPOE_COOKIE);
      break;
    }

    asciilen = 0;
    switch (rep->header.cmd) {
      case NGM_PPPOE_SET_FLAG:	msg = "SET_FLAG";	break;
      case NGM_PPPOE_CONNECT:	msg = "CONNECT";	break;
      case NGM_PPPOE_LISTEN:	msg = "LISTEN";		break;
      case NGM_PPPOE_OFFER:	msg = "OFFER";		break;
      case NGM_PPPOE_SUCCESS:	msg = "SUCCESS";	break;
      case NGM_PPPOE_FAIL:	msg = "FAIL";		break;
      case NGM_PPPOE_CLOSE:	msg = "CLOSE";		break;
      case NGM_PPPOE_GET_STATUS:	msg = "GET_STATUS";	break;
      case NGM_PPPOE_ACNAME:
        msg = "ACNAME";
        if (FUNC6("ACNAME", sts->hook, 1) != 0)
          FUNC3(LogWARN, "setenv: cannot set ACNAME=%s: %m", sts->hook);
        asciilen = rep->header.arglen;
        break;
      case NGM_PPPOE_SESSIONID:
        msg = "SESSIONID";
        FUNC7(sessionid, sizeof sessionid, "%04x", *(u_int16_t *)sts);
        if (FUNC6("SESSIONID", sessionid, 1) != 0)
          FUNC9(LOG_WARNING, "setenv: cannot set SESSIONID=%s: %m",
                 sessionid);
        /* Use this in preference to our interface index */
        slot = FUNC8(sessionid, &end, 16);
        if (end != sessionid && *end == '\0')
            dev->slot = slot;
        break;
      default:
        FUNC7(unknown, sizeof unknown, "<%d>", (int)rep->header.cmd);
        msg = unknown;
        break;
    }

    if (asciilen)
      FUNC3(LogPHASE, "Received NGM_PPPOE_%s (hook \"%.*s\")\n",
                 msg, asciilen, sts->hook);
    else
      FUNC3(LogPHASE, "Received NGM_PPPOE_%s\n", msg);

    switch (rep->header.cmd) {
      case NGM_PPPOE_SUCCESS:
        dev->connected = CARRIER_OK;
        break;
      case NGM_PPPOE_FAIL:
      case NGM_PPPOE_CLOSE:
        dev->connected = CARRIER_LOST;
        break;
    }
  }
  FUNC2(r);
}