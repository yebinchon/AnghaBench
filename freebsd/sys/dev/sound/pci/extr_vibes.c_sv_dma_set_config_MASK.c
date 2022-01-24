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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SV_DMA_ADDR ; 
 int /*<<< orphan*/  SV_DMA_COUNT ; 
 int /*<<< orphan*/  SV_DMA_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 

__attribute__((used)) static void
FUNC4(bus_space_tag_t st, bus_space_handle_t sh,
		  u_int32_t base, u_int32_t count, u_int8_t mode)
{
	FUNC2(st, sh, SV_DMA_ADDR, base);
	FUNC2(st, sh, SV_DMA_COUNT, count & 0xffffff);
	FUNC1(st, sh, SV_DMA_MODE, mode);

	FUNC0(FUNC3("base 0x%08x count %5d mode 0x%02x\n",
		   base, count, mode));
}