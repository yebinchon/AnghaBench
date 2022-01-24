#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ mdump_template_size; int /*<<< orphan*/ * mdump_template; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;
typedef  TYPE_2__ qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_QLA83XXBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(qla_host_t *ha)
{
	if (ha->hw.mdump_template != NULL) {
		FUNC0(ha->hw.mdump_template, M_QLA83XXBUF);
		ha->hw.mdump_template = NULL;
		ha->hw.mdump_template_size = 0;
	}
	return;
}