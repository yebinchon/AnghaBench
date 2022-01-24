#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* snscb_ports; int /*<<< orphan*/  snscb_cthdr; } ;
typedef  TYPE_2__ sns_gid_xx_rsp_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_5__ {int control; int* portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(ispsoftc_t *isp, sns_gid_xx_rsp_t *src, sns_gid_xx_rsp_t *dst, int nwords)
{
	int i, j;

	FUNC1(isp, &src->snscb_cthdr, &dst->snscb_cthdr);
	for (i = 0; i < nwords; i++) {
		FUNC0(isp, &src->snscb_ports[i].control,
		    dst->snscb_ports[i].control);
		for (j = 0; j < 3; j++) {
			FUNC0(isp, &src->snscb_ports[i].portid[j],
			    dst->snscb_ports[i].portid[j]);
		}
		if (dst->snscb_ports[i].control & 0x80)
			break;
	}
}