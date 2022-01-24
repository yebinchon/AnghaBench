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
typedef  void* jmp_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (void*) ; 
 int FUNC2 (void*) ; 

int
FUNC3(vm_offset_t addr, size_t size, char *data)
{
	jmp_buf jb;
	void *prev_jb;
	char *dst;
	int ret;

	prev_jb = FUNC1(jb);
	ret = FUNC2(jb);
	if (ret == 0) {
		dst = (char *)addr;
		while (size-- > 0)
			*dst++ = *data++;

		/* Invalidate I-cache */
		FUNC0();
	}
	(void)FUNC1(prev_jb);

	return (ret);
}