#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_5__ sli4_t ;
struct TYPE_11__ {int /*<<< orphan*/  buffer_address_high; int /*<<< orphan*/  buffer_address_low; } ;
struct TYPE_12__ {TYPE_2__ data; } ;
struct TYPE_13__ {size_t buffer_length; TYPE_3__ u; int /*<<< orphan*/  bde_type; } ;
struct TYPE_10__ {int /*<<< orphan*/  command; } ;
struct TYPE_15__ {TYPE_4__ bde_loop_map; TYPE_1__ hdr; } ;
typedef  TYPE_6__ sli4_cmd_read_topology_t ;
struct TYPE_16__ {size_t size; void* virt; int /*<<< orphan*/  phys; } ;
typedef  TYPE_7__ ocs_dma_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLI4_BDE_TYPE_BDE_64 ; 
 int /*<<< orphan*/  SLI4_MBOX_COMMAND_READ_TOPOLOGY ; 
 size_t SLI4_MIN_LOOP_MAP_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 

int32_t
FUNC4(sli4_t *sli4, void *buf, size_t size, ocs_dma_t *dma)
{
	sli4_cmd_read_topology_t *read_topo = buf;

	FUNC3(buf, 0, size);

	read_topo->hdr.command = SLI4_MBOX_COMMAND_READ_TOPOLOGY;

	if (dma && dma->size) {
		if (dma->size < SLI4_MIN_LOOP_MAP_BYTES) {
			FUNC2(sli4->os, "loop map buffer too small %jd\n",
					dma->size);
			return 0;
		}

		FUNC3(dma->virt, 0, dma->size);

		read_topo->bde_loop_map.bde_type = SLI4_BDE_TYPE_BDE_64;
		read_topo->bde_loop_map.buffer_length = dma->size;
		read_topo->bde_loop_map.u.data.buffer_address_low  = FUNC1(dma->phys);
		read_topo->bde_loop_map.u.data.buffer_address_high = FUNC0(dma->phys);
	}

	return sizeof(sli4_cmd_read_topology_t);
}