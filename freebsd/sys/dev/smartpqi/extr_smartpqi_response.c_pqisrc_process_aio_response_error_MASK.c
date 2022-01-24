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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  rcb_t ;
struct TYPE_4__ {scalar_t__ virt_addr; } ;
struct TYPE_5__ {TYPE_1__ err_buf_dma_mem; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
typedef  int /*<<< orphan*/  aio_path_error_info_elem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(pqisrc_softstate_t *softs,
		rcb_t *rcb, uint16_t err_idx)
{
	aio_path_error_info_elem_t *err_info = NULL;
	
	FUNC1("IN");
	
	err_info = (aio_path_error_info_elem_t*)
			softs->err_buf_dma_mem.virt_addr + 
			err_idx;

	if(err_info == NULL) {
		FUNC0("err_info structure is NULL  err_idx :%x", err_idx);
		return;
	}
	
	FUNC2(rcb, err_info);

	FUNC1("OUT");
}