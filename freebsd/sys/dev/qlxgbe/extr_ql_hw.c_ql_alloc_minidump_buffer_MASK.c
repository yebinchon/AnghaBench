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
struct TYPE_5__ {int /*<<< orphan*/ * mdump_buffer; int /*<<< orphan*/  mdump_buffer_size; } ;
struct TYPE_6__ {TYPE_1__ hw; } ;
typedef  TYPE_2__ qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_QLA83XXBUF ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC2(qla_host_t *ha)
{
	ha->hw.mdump_buffer_size = FUNC1(ha);

	if (!ha->hw.mdump_buffer_size)
		return (-1);

	ha->hw.mdump_buffer = FUNC0(ha->hw.mdump_buffer_size, M_QLA83XXBUF,
					M_NOWAIT);

	if (ha->hw.mdump_buffer == NULL)
		return (-1);

	return (0);
}