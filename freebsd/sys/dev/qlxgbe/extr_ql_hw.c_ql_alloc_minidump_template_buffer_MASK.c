#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  size; } ;
struct TYPE_7__ {TYPE_1__ minidump; } ;
struct TYPE_8__ {int /*<<< orphan*/ * mdump_template; int /*<<< orphan*/  mdump_template_size; TYPE_2__ dma_buf; } ;
struct TYPE_9__ {TYPE_3__ hw; } ;
typedef  TYPE_4__ qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_QLA83XXBUF ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(qla_host_t *ha)
{
	ha->hw.mdump_template_size = ha->hw.dma_buf.minidump.size;

	ha->hw.mdump_template = FUNC0(ha->hw.mdump_template_size,
					M_QLA83XXBUF, M_NOWAIT);

	if (ha->hw.mdump_template == NULL)
		return (-1);

	return (0);
}