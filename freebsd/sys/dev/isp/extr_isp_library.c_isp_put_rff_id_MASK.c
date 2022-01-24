#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rffid_fc4type; int /*<<< orphan*/  rffid_fc4features; int /*<<< orphan*/  rffid_reserved2; int /*<<< orphan*/ * rffid_portid; int /*<<< orphan*/  rffid_reserved; int /*<<< orphan*/  rffid_hdr; } ;
typedef  TYPE_1__ rff_id_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3(ispsoftc_t *isp, rff_id_t *src, rff_id_t *dst)
{
	int i;

	FUNC2(isp, &src->rffid_hdr, &dst->rffid_hdr);
	FUNC1(isp, src->rffid_reserved, &dst->rffid_reserved);
	for (i = 0; i < 3; i++)
		FUNC1(isp, src->rffid_portid[i], &dst->rffid_portid[i]);
	FUNC0(isp, src->rffid_reserved2, &dst->rffid_reserved2);
	FUNC1(isp, src->rffid_fc4features, &dst->rffid_fc4features);
	FUNC1(isp, src->rffid_fc4type, &dst->rffid_fc4type);
}