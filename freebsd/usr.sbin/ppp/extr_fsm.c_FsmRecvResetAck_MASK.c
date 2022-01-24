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
struct mbuf {int dummy; } ;
struct fsmheader {int /*<<< orphan*/  id; } ;
struct fsm {TYPE_1__* fn; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* RecvResetAck ) (struct fsm*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct fsm *fp, struct fsmheader *lhp, struct mbuf *bp)
{
  (*fp->fn->RecvResetAck)(fp, lhp->id);
  FUNC0(bp);
}