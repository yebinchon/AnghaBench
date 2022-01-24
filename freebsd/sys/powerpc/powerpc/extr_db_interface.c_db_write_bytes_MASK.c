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
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  void* jmp_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 void* FUNC1 (void*) ; 
 int FUNC2 (void*) ; 

int
FUNC3(vm_offset_t addr, size_t size, char *data)
{
	jmp_buf jb;
	void *prev_jb;
	char *dst;
	size_t cnt;
	int ret;

	prev_jb = FUNC1(jb);
	ret = FUNC2(jb);
	if (ret == 0) {
		dst = (char *)addr;
		cnt = size;

		if (size == 8)
			*((uint64_t*)dst) = *((uint64_t*)data);
		if (size == 4)
			*((int*)dst) = *((int*)data);
		else
		if (size == 2)
			*((short*)dst) = *((short*)data);
		else
			while (cnt-- > 0)
				*dst++ = *data++;
		FUNC0((void *)addr, size);
	}
	(void)FUNC1(prev_jb);
	return (ret);
}