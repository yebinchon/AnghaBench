#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/  buffer_length; void* buffer_address_low; void* buffer_address_high; } ;
typedef  TYPE_2__ sli4_sge_t ;
typedef  int /*<<< orphan*/  ocs_hw_t ;
struct TYPE_9__ {TYPE_2__* virt; } ;
struct TYPE_11__ {TYPE_1__ def_sgl; } ;
typedef  TYPE_3__ ocs_hw_io_t ;
struct TYPE_12__ {int /*<<< orphan*/  size; int /*<<< orphan*/  phys; } ;
typedef  TYPE_4__ ocs_dma_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_HW_RTN_ERROR ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static int32_t
FUNC3(ocs_hw_t *hw, ocs_hw_io_t *io, ocs_dma_t *cmnd, uint32_t cmnd_size,
		ocs_dma_t *rsp)
{
	sli4_sge_t	*data = NULL;

	if (!hw || !io) {
		FUNC2(NULL, "bad parm hw=%p io=%p\n", hw, io);
		return OCS_HW_RTN_ERROR;
	}

	data = io->def_sgl.virt;

	/* setup command pointer */
	data->buffer_address_high = FUNC0(cmnd->phys);
	data->buffer_address_low  = FUNC1(cmnd->phys);
	data->buffer_length = cmnd_size;
	data++;

	/* setup response pointer */
	data->buffer_address_high = FUNC0(rsp->phys);
	data->buffer_address_low  = FUNC1(rsp->phys);
	data->buffer_length = rsp->size;

	return 0;
}