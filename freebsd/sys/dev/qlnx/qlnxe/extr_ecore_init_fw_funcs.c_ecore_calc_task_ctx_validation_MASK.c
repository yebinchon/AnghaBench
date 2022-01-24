#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t,int,int /*<<< orphan*/ ) ; 
 size_t** task_region_offsets ; 

void FUNC2(void *p_ctx_mem, u16 ctx_size, u8 ctx_type, u32 tid)
{
	u8 *p_ctx, *region1_val_ptr;

	p_ctx = (u8* const)p_ctx_mem;
	region1_val_ptr = &p_ctx[task_region_offsets[0][ctx_type]];

	FUNC0(p_ctx, 0, ctx_size);

	*region1_val_ptr = FUNC1(ctx_type, 1, tid);
}