#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int maxreq; } ;
struct TYPE_16__ {TYPE_5__ fsm; } ;
struct TYPE_12__ {int /*<<< orphan*/  cslc; } ;
struct ipcp {int peer_compproto; TYPE_6__ cfg; int /*<<< orphan*/  throughput; int /*<<< orphan*/  ifmask; int /*<<< orphan*/  peer_ip; TYPE_2__ vj; int /*<<< orphan*/  my_ip; } ;
struct TYPE_14__ {int reqs; int naks; int rejs; } ;
struct fsm {TYPE_4__ more; TYPE_7__* bundle; TYPE_1__* link; } ;
struct TYPE_13__ {scalar_t__* file; } ;
struct TYPE_18__ {char* filterid; TYPE_3__ cfg; } ;
struct TYPE_17__ {TYPE_9__ radius; int /*<<< orphan*/  links; int /*<<< orphan*/  radacct; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINKUPFILE ; 
 int /*<<< orphan*/  LogIPCP ; 
 int PROTO_VJCOMP ; 
 int /*<<< orphan*/  RAD_START ; 
 char* FUNC0 (TYPE_7__*) ; 
 struct ipcp* FUNC1 (struct fsm*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipcp*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 scalar_t__ FUNC11 (TYPE_7__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(struct fsm *fp)
{
  /* We're now up */
  struct ipcp *ipcp = FUNC1(fp);
  char tbuff[16];

  FUNC5(LogIPCP, "%s: LayerUp.\n", fp->link->name);
  FUNC10(tbuff, sizeof tbuff, "%s", FUNC2(ipcp->my_ip));
  FUNC5(LogIPCP, "myaddr %s hisaddr = %s\n",
             tbuff, FUNC2(ipcp->peer_ip));

  if (ipcp->peer_compproto >> 16 == PROTO_VJCOMP)
    FUNC9(&ipcp->vj.cslc, (ipcp->peer_compproto >> 8) & 255);

  if (!FUNC3(ipcp))
    return 0;

#ifndef NORADIUS
  FUNC7(&fp->bundle->radacct, &ipcp->peer_ip, &ipcp->ifmask);
  FUNC6(&fp->bundle->radius, &fp->bundle->radacct, fp->bundle->links,
                 RAD_START, &ipcp->throughput);

  if (*fp->bundle->radius.cfg.file && fp->bundle->radius.filterid)
    FUNC11(fp->bundle, fp->bundle->radius.filterid, LINKUPFILE,
                  NULL, NULL);
  FUNC8(fp->bundle);
#endif

  /*
   * XXX this stuff should really live in the FSM.  Our config should
   * associate executable sections in files with events.
   */
  if (FUNC11(fp->bundle, tbuff, LINKUPFILE, NULL, NULL) < 0) {
    if (FUNC0(fp->bundle)) {
      if (FUNC11(fp->bundle, FUNC0(fp->bundle),
                       LINKUPFILE, NULL, NULL) < 0)
        FUNC11(fp->bundle, "MYADDR", LINKUPFILE, NULL, NULL);
    } else
      FUNC11(fp->bundle, "MYADDR", LINKUPFILE, NULL, NULL);
  }

  fp->more.reqs = fp->more.naks = fp->more.rejs = ipcp->cfg.fsm.maxreq * 3;
  FUNC4();

  return 1;
}