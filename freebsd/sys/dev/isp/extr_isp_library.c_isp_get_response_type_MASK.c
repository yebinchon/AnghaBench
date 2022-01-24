#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_3__ {int /*<<< orphan*/  rqs_entry_type; int /*<<< orphan*/  rqs_entry_count; } ;
typedef  TYPE_1__ isphdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(ispsoftc_t *isp, isphdr_t *hp)
{
	uint8_t type;
	if (FUNC1(isp)) {
		FUNC0(isp, &hp->rqs_entry_count, type);
	} else {
		FUNC0(isp, &hp->rqs_entry_type, type);
	}
	return ((int)type);
}