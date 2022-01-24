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
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_4__ {int /*<<< orphan*/  pnnle_reserved; int /*<<< orphan*/  pnnle_handle; int /*<<< orphan*/ * pnnle_name; } ;
typedef  TYPE_1__ isp_pnnle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(ispsoftc_t *isp, isp_pnnle_t *src, isp_pnnle_t *dst)
{
	int i;

	for (i = 0; i < 8; i++)
		FUNC1(isp, &src->pnnle_name[i], dst->pnnle_name[i]);
	FUNC0(isp, &src->pnnle_handle, dst->pnnle_handle);
	FUNC0(isp, &src->pnnle_reserved, dst->pnnle_reserved);
}