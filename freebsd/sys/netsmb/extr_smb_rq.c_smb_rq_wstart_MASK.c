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
typedef  int /*<<< orphan*/  u_int8_t ;
struct TYPE_2__ {scalar_t__ mb_count; } ;
struct smb_rq {TYPE_1__ sr_rq; int /*<<< orphan*/  sr_wcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 

void
FUNC1(struct smb_rq *rqp)
{
	rqp->sr_wcount = FUNC0(&rqp->sr_rq, sizeof(u_int8_t));
	rqp->sr_rq.mb_count = 0;
}