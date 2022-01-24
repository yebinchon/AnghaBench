#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  sli4_t ;
struct TYPE_3__ {int /*<<< orphan*/  command; } ;
struct TYPE_4__ {int vfi; int fcfi; int vpi; int /*<<< orphan*/  vp; TYPE_1__ hdr; } ;
typedef  TYPE_2__ sli4_cmd_init_vfi_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLI4_MBOX_COMMAND_INIT_VFI ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,size_t) ; 

int32_t
FUNC1(sli4_t *sli4, void *buf, size_t size, uint16_t vfi,
		uint16_t fcfi, uint16_t vpi)
{
	sli4_cmd_init_vfi_t	*init_vfi = buf;

	FUNC0(buf, 0, size);

	init_vfi->hdr.command = SLI4_MBOX_COMMAND_INIT_VFI;

	init_vfi->vfi = vfi;
	init_vfi->fcfi = fcfi;

	/*
	 * If the VPI is valid, initialize it at the same time as
	 * the VFI
	 */
	if (0xffff != vpi) {
		init_vfi->vp  = TRUE;
		init_vfi->vpi = vpi;
	}

	return sizeof(sli4_cmd_init_vfi_t);
}