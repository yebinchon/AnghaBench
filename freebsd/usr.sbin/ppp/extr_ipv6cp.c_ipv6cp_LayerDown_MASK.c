#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ipv6cp {int /*<<< orphan*/  throughput; int /*<<< orphan*/  myaddr; } ;
struct fsm {TYPE_3__* bundle; TYPE_1__* link; } ;
struct TYPE_9__ {scalar_t__* file; } ;
struct TYPE_11__ {char* filterid; TYPE_2__ cfg; } ;
struct TYPE_10__ {TYPE_4__ radius; int /*<<< orphan*/  links; int /*<<< orphan*/  radacct6; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINKDOWNFILE ; 
 int /*<<< orphan*/  LogIPV6CP ; 
 int NCP_ASCIIBUFFERSIZE ; 
 int /*<<< orphan*/  OPT_IPCP ; 
 int /*<<< orphan*/  RAD_STOP ; 
 char* FUNC1 (TYPE_3__*) ; 
 struct ipv6cp* FUNC2 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipv6cp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 
 scalar_t__ FUNC9 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct fsm *fp)
{
  /* About to come down */
  struct ipv6cp *ipv6cp = FUNC2(fp);
  static int recursing;
  char addr[NCP_ASCIIBUFFERSIZE];

  if (!recursing++) {
    FUNC8(addr, sizeof addr, "%s", FUNC5(&ipv6cp->myaddr));
    FUNC4(LogIPV6CP, "%s: LayerDown: %s\n", fp->link->name, addr);

#ifndef NORADIUS
    FUNC7(&fp->bundle->radius);
    FUNC6(&fp->bundle->radius, &fp->bundle->radacct6,
		   fp->bundle->links, RAD_STOP, &ipv6cp->throughput);

    /*
     * XXX: Avoid duplicate evaluation of filterid between IPCP and
     * IPV6CP.  When IPCP is enabled and rejected, filterid is not
     * evaluated.
     */
    if (!FUNC0(fp->bundle, OPT_IPCP)) {
      if (*fp->bundle->radius.cfg.file && fp->bundle->radius.filterid)
	FUNC9(fp->bundle, fp->bundle->radius.filterid, LINKDOWNFILE,
		      NULL, NULL);
    }
#endif

    /*
     * XXX this stuff should really live in the FSM.  Our config should
     * associate executable sections in files with events.
     */
    if (FUNC9(fp->bundle, addr, LINKDOWNFILE, NULL, NULL) < 0) {
      /*
       * XXX: Avoid duplicate evaluation of label between IPCP and
       * IPV6CP.  When IPCP is enabled and rejected, label is not
       * evaluated.
       */
      if (FUNC1(fp->bundle) && !FUNC0(fp->bundle, OPT_IPCP)) {
	if (FUNC9(fp->bundle, FUNC1(fp->bundle),
			  LINKDOWNFILE, NULL, NULL) < 0)
	  FUNC9(fp->bundle, "MYADDR6", LINKDOWNFILE, NULL, NULL);
      } else
	FUNC9(fp->bundle, "MYADDR6", LINKDOWNFILE, NULL, NULL);
    }

    FUNC3(ipv6cp);
  }
  recursing--;
}