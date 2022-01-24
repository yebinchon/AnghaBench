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
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static int FUNC2(adapter_t * adapter, u32 offset)
{
	u32 read_offset, shift, ret, tmp;
	u8 buf[4];

	read_offset = offset & 0xfffffffc;
	shift = offset & 0x03;

	ret = FUNC1(adapter, read_offset, &tmp);
	if (ret)
		return ret;
	*((u32 *)buf) = FUNC0(tmp);

	if (buf[shift] == 0x78)
		return 1;
	else
		return 0;
}