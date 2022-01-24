#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int maxreq; } ;
struct TYPE_14__ {TYPE_4__ fsm; } ;
struct ipv6cp {TYPE_5__ cfg; int /*<<< orphan*/  throughput; int /*<<< orphan*/  his_ifid; int /*<<< orphan*/  hisaddr; int /*<<< orphan*/  myaddr; } ;
struct TYPE_12__ {int reqs; int naks; int rejs; } ;
struct fsm {TYPE_3__ more; TYPE_6__* bundle; TYPE_1__* link; } ;
struct TYPE_11__ {scalar_t__* file; } ;
struct TYPE_16__ {char* filterid; TYPE_2__ cfg; } ;
struct TYPE_15__ {TYPE_7__ radius; int /*<<< orphan*/  links; int /*<<< orphan*/  radacct6; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINKUPFILE ; 
 int /*<<< orphan*/  LogIPV6CP ; 
 int NCP_ASCIIBUFFERSIZE ; 
 int /*<<< orphan*/  OPT_IPCP ; 
 int /*<<< orphan*/  RAD_START ; 
 char* FUNC1 (TYPE_6__*) ; 
 struct ipv6cp* FUNC2 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipv6cp*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 
 scalar_t__ FUNC10 (TYPE_6__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct fsm *fp)
{
  /* We're now up */
  struct ipv6cp *ipv6cp = FUNC2(fp);
  char tbuff[NCP_ASCIIBUFFERSIZE];

  FUNC5(LogIPV6CP, "%s: LayerUp.\n", fp->link->name);
  if (!FUNC3(ipv6cp))
    return 0;

  FUNC9(tbuff, sizeof tbuff, "%s", FUNC6(&ipv6cp->myaddr));
  FUNC5(LogIPV6CP, "myaddr %s hisaddr = %s\n",
             tbuff, FUNC6(&ipv6cp->hisaddr));

#ifndef NORADIUS
  FUNC8(&fp->bundle->radacct6, ipv6cp->his_ifid);
  FUNC7(&fp->bundle->radius, &fp->bundle->radacct6,
		 fp->bundle->links, RAD_START, &ipv6cp->throughput);

  /*
   * XXX: Avoid duplicate evaluation of filterid between IPCP and
   * IPV6CP.  When IPCP is enabled and rejected, filterid is not
   * evaluated.
   */
  if (!FUNC0(fp->bundle, OPT_IPCP)) {
    if (*fp->bundle->radius.cfg.file && fp->bundle->radius.filterid)
      FUNC10(fp->bundle, fp->bundle->radius.filterid, LINKUPFILE,
		    NULL, NULL);
  }
#endif

  /*
   * XXX this stuff should really live in the FSM.  Our config should
   * associate executable sections in files with events.
   */
  if (FUNC10(fp->bundle, tbuff, LINKUPFILE, NULL, NULL) < 0) {
    /*
     * XXX: Avoid duplicate evaluation of label between IPCP and
     * IPV6CP.  When IPCP is enabled and rejected, label is not
     * evaluated.
     */
    if (FUNC1(fp->bundle) && !FUNC0(fp->bundle, OPT_IPCP)) {
      if (FUNC10(fp->bundle, FUNC1(fp->bundle),
			LINKUPFILE, NULL, NULL) < 0)
	FUNC10(fp->bundle, "MYADDR6", LINKUPFILE, NULL, NULL);
    } else
      FUNC10(fp->bundle, "MYADDR6", LINKUPFILE, NULL, NULL);
  }

  fp->more.reqs = fp->more.naks = fp->more.rejs = ipv6cp->cfg.fsm.maxreq * 3;
  FUNC4();

  return 1;
}