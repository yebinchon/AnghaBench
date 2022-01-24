#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct fsm {scalar_t__ state; scalar_t__ open_mode; TYPE_7__* link; } ;
struct datalink {int /*<<< orphan*/ * name; TYPE_3__* physical; } ;
struct cmdargs {int argc; int argn; TYPE_11__* bundle; struct datalink* cx; int /*<<< orphan*/ * argv; } ;
struct TYPE_22__ {struct fsm fsm; } ;
struct TYPE_23__ {TYPE_8__ ipcp; } ;
struct TYPE_19__ {scalar_t__ state; } ;
struct TYPE_20__ {TYPE_5__ fsm; } ;
struct TYPE_21__ {TYPE_6__ lcp; } ;
struct TYPE_18__ {struct fsm fsm; } ;
struct TYPE_15__ {struct fsm fsm; } ;
struct TYPE_16__ {TYPE_1__ lcp; } ;
struct TYPE_17__ {TYPE_2__ link; } ;
struct TYPE_14__ {TYPE_9__ ncp; } ;
struct TYPE_13__ {TYPE_4__ ccp; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  PHYS_ALL ; 
 scalar_t__ ST_OPENED ; 
 scalar_t__ ST_STOPPED ; 
 struct datalink* FUNC0 (TYPE_11__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_10__* FUNC2 (struct cmdargs const*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC6 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC9(struct cmdargs const *arg)
{
  if (arg->argc == arg->argn)
    FUNC1(arg->bundle, arg->cx ? arg->cx->name : NULL, PHYS_ALL, 1);
  else if (arg->argc == arg->argn + 1) {
    if (!FUNC8(arg->argv[arg->argn], "lcp")) {
      struct datalink *cx = arg->cx ?
        arg->cx : FUNC0(arg->bundle, NULL);
      if (cx) {
        if (cx->physical->link.lcp.fsm.state == ST_OPENED)
          FUNC5(&cx->physical->link.lcp.fsm);
        else
          FUNC1(arg->bundle, cx->name, PHYS_ALL, 1);
      } else
        FUNC7(LogWARN, "open lcp: You must specify a link\n");
    } else if (!FUNC8(arg->argv[arg->argn], "ccp")) {
      struct fsm *fp;

      fp = &FUNC2(arg)->ccp.fsm;
      if (fp->link->lcp.fsm.state != ST_OPENED)
        FUNC7(LogWARN, "open: LCP must be open before opening CCP\n");
      else if (fp->state == ST_OPENED)
        FUNC5(fp);
      else {
        fp->open_mode = 0;	/* Not passive any more */
        if (fp->state == ST_STOPPED) {
          FUNC3(fp);
          FUNC6(fp);
        } else {
          FUNC6(fp);
          FUNC4(fp);
        }
      }
    } else if (!FUNC8(arg->argv[arg->argn], "ipcp")) {
      if (arg->cx)
        FUNC7(LogWARN, "open ipcp: You need not specify a link\n");
      if (arg->bundle->ncp.ipcp.fsm.state == ST_OPENED)
        FUNC5(&arg->bundle->ncp.ipcp.fsm);
      else
        FUNC1(arg->bundle, NULL, PHYS_ALL, 1);
    } else
      return -1;
  } else
    return -1;

  return 0;
}