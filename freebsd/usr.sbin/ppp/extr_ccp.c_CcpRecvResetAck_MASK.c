#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct fsm {TYPE_1__* link; } ;
struct TYPE_7__ {size_t algorithm; int /*<<< orphan*/ * state; } ;
struct ccp {int reset_sent; int last_reset; TYPE_3__ in; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* Reset ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {TYPE_2__ i; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogCCP ; 
 TYPE_4__** algorithm ; 
 struct ccp* FUNC0 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct fsm *fp, u_char id)
{
  /* Got a reset ACK, reset incoming dictionary */
  struct ccp *ccp = FUNC0(fp);

  if (ccp->reset_sent != -1) {
    if (id != ccp->reset_sent) {
      FUNC1(LogCCP, "%s: Incorrect ResetAck (id %d, not %d)"
                " ignored\n", fp->link->name, id, ccp->reset_sent);
      return;
    }
    /* Whaddaya know - a correct reset ack */
  } else if (id == ccp->last_reset)
    FUNC1(LogCCP, "%s: Duplicate ResetAck (resetting again)\n",
               fp->link->name);
  else {
    FUNC1(LogCCP, "%s: Unexpected ResetAck (id %d) ignored\n",
               fp->link->name, id);
    return;
  }

  ccp->last_reset = ccp->reset_sent;
  ccp->reset_sent = -1;
  if (ccp->in.state != NULL)
    (*algorithm[ccp->in.algorithm]->i.Reset)(ccp->in.state);
}