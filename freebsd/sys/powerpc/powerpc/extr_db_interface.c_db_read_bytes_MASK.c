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
 void* FUNC0 (void*) ; 
 int FUNC1 (void*) ; 

int
FUNC2(vm_offset_t addr, size_t size, char *data)
{
	jmp_buf jb;
	void *prev_jb;
	char *src;
	int ret;

	prev_jb = FUNC0(jb);
	ret = FUNC1(jb);
	if (ret == 0) {
		src = (char *)addr;

		if (size == 8)
			*((uint64_t*)data) = *((uint64_t*)src);
		if (size == 4)
			*((int *)data) = *((int *)src);
		else if (size == 2)
			*((short *)data) = *((short *)src);
		else
			while (size-- > 0)
				*data++ = *src++;
	}
	(void)FUNC0(prev_jb);
	return (ret);
}