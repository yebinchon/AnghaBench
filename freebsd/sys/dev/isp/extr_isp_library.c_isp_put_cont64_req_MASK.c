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
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_6__ {TYPE_1__* req_dataseg; int /*<<< orphan*/  req_header; } ;
typedef  TYPE_2__ ispcontreq64_t ;
struct TYPE_5__ {int /*<<< orphan*/  ds_count; int /*<<< orphan*/  ds_basehi; int /*<<< orphan*/  ds_base; } ;

/* Variables and functions */
 int ISP_CDSEG64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(ispsoftc_t *isp, ispcontreq64_t *src, ispcontreq64_t *dst)
{
	int i;
	FUNC1(isp, &src->req_header, &dst->req_header);
	for (i = 0; i < ISP_CDSEG64; i++) {
		FUNC0(isp, src->req_dataseg[i].ds_base, &dst->req_dataseg[i].ds_base);
		FUNC0(isp, src->req_dataseg[i].ds_basehi, &dst->req_dataseg[i].ds_basehi);
		FUNC0(isp, src->req_dataseg[i].ds_count, &dst->req_dataseg[i].ds_count);
	}
}