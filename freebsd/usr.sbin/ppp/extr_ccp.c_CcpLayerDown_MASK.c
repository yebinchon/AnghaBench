#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct fsm {TYPE_1__* link; } ;
struct ccp_opt {struct ccp_opt* next; } ;
struct TYPE_11__ {size_t algorithm; struct ccp_opt* opt; int /*<<< orphan*/ * state; } ;
struct TYPE_9__ {size_t algorithm; int /*<<< orphan*/ * state; } ;
struct ccp {TYPE_5__ out; scalar_t__ my_reject; scalar_t__ his_reject; TYPE_3__ in; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* Term ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  (* Term ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_12__ {TYPE_4__ o; TYPE_2__ i; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogCCP ; 
 TYPE_6__** algorithm ; 
 int /*<<< orphan*/  FUNC0 (struct ccp*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccp_opt*) ; 
 struct ccp* FUNC2 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct fsm *fp)
{
  /* About to come down */
  struct ccp *ccp = FUNC2(fp);
  struct ccp_opt *next;

  FUNC3(LogCCP, "%s: LayerDown.\n", fp->link->name);
  if (ccp->in.state != NULL) {
    (*algorithm[ccp->in.algorithm]->i.Term)(ccp->in.state);
    ccp->in.state = NULL;
    ccp->in.algorithm = -1;
  }
  if (ccp->out.state != NULL) {
    (*algorithm[ccp->out.algorithm]->o.Term)(ccp->out.state);
    ccp->out.state = NULL;
    ccp->out.algorithm = -1;
  }
  ccp->his_reject = ccp->my_reject = 0;

  while (ccp->out.opt) {
    next = ccp->out.opt->next;
    FUNC1(ccp->out.opt);
    ccp->out.opt = next;
  }
  FUNC0(ccp);
}