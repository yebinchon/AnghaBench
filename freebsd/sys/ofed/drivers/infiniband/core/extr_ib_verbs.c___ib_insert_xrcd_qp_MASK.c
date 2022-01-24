#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ib_xrcd {int /*<<< orphan*/  tgt_qp_mutex; int /*<<< orphan*/  tgt_qp_list; } ;
struct ib_qp {int /*<<< orphan*/  xrcd_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ib_xrcd *xrcd, struct ib_qp *qp)
{
	FUNC1(&xrcd->tgt_qp_mutex);
	FUNC0(&qp->xrcd_list, &xrcd->tgt_qp_list);
	FUNC2(&xrcd->tgt_qp_mutex);
}