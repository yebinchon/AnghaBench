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
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct qlnxr_dev* FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct ib_cq *ibcq, int new_cnt, struct ib_udata *udata)
{
	int			status = 0;
	struct qlnxr_dev	*dev = FUNC1((ibcq->device));
	qlnx_host_t		*ha;

	ha = dev->ha;

	FUNC0(ha, "enter/exit\n");

	return status;
}