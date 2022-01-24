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
struct TYPE_4__ {int /*<<< orphan*/  rsnnnn_length; int /*<<< orphan*/ * rsnnnn_nodename; int /*<<< orphan*/  rsnnnn_hdr; } ;
typedef  TYPE_1__ rsnn_nn_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(ispsoftc_t *isp, rsnn_nn_t *src, rsnn_nn_t *dst)
{
	int i;
	FUNC1(isp, &src->rsnnnn_hdr, &dst->rsnnnn_hdr);
	for (i = 0; i < 8; i++)
		FUNC0(isp, src->rsnnnn_nodename[i], &dst->rsnnnn_nodename[i]);
	FUNC0(isp, src->rsnnnn_length, &dst->rsnnnn_length);
/*	for (i = 0; i < src->rsnnnn_length; i++)
		ISP_IOZPUT_8(isp, src->rsnnnn_name[i], &dst->rsnnnn_name[i]);*/
}