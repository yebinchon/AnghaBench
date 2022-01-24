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
struct ipcp {int /*<<< orphan*/  throughput; int /*<<< orphan*/  my_ip; } ;
struct fsm {TYPE_3__* bundle; TYPE_1__* link; } ;
struct TYPE_9__ {scalar_t__* file; } ;
struct TYPE_11__ {char* filterid; TYPE_2__ cfg; } ;
struct TYPE_10__ {TYPE_4__ radius; int /*<<< orphan*/  links; int /*<<< orphan*/  radacct; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  INADDR_NONE ; 
 int /*<<< orphan*/  LINKDOWNFILE ; 
 int /*<<< orphan*/  LogIPCP ; 
 int /*<<< orphan*/  RAD_STOP ; 
 char* FUNC0 (TYPE_3__*) ; 
 struct ipcp* FUNC1 (struct fsm*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipcp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 
 scalar_t__ FUNC9 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct fsm *fp)
{
  /* About to come down */
  struct ipcp *ipcp = FUNC1(fp);
  static int recursing;
  char addr[16];

  if (!recursing++) {
    FUNC8(addr, sizeof addr, "%s", FUNC2(ipcp->my_ip));
    FUNC4(LogIPCP, "%s: LayerDown: %s\n", fp->link->name, addr);

#ifndef NORADIUS
    FUNC6(&fp->bundle->radius);
    FUNC5(&fp->bundle->radius, &fp->bundle->radacct,
                   fp->bundle->links, RAD_STOP, &ipcp->throughput);

    if (*fp->bundle->radius.cfg.file && fp->bundle->radius.filterid)
      FUNC9(fp->bundle, fp->bundle->radius.filterid, LINKDOWNFILE,
                    NULL, NULL);
    FUNC7(&fp->bundle->radius);
#endif

    /*
     * XXX this stuff should really live in the FSM.  Our config should
     * associate executable sections in files with events.
     */
    if (FUNC9(fp->bundle, addr, LINKDOWNFILE, NULL, NULL) < 0) {
      if (FUNC0(fp->bundle)) {
         if (FUNC9(fp->bundle, FUNC0(fp->bundle),
                          LINKDOWNFILE, NULL, NULL) < 0)
         FUNC9(fp->bundle, "MYADDR", LINKDOWNFILE, NULL, NULL);
      } else
        FUNC9(fp->bundle, "MYADDR", LINKDOWNFILE, NULL, NULL);
    }

    FUNC3(ipcp, INADDR_NONE);
  }
  recursing--;
}