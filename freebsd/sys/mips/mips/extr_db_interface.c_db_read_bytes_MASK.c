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
typedef  size_t vm_offset_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  void* jmp_buf ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int FUNC1 (void*) ; 

int
FUNC2(vm_offset_t addr, size_t size, char *data)
{
	jmp_buf jb;
	void *prev_jb;
	int ret;

	prev_jb = FUNC0(jb);
	ret = FUNC1(jb);
	if (ret == 0) {
		/*
		 * 'addr' could be a memory-mapped I/O address.  Try to
		 * do atomic load/store in unit of size requested.
		 * size == 8 is only atomic on 64bit or n32 kernel.
		 */
		if ((size == 2 || size == 4 || size == 8) &&
		    ((addr & (size -1)) == 0) &&
		    (((vm_offset_t)data & (size -1)) == 0)) {
			switch (size) {
			case 2:
				*(uint16_t *)data = *(uint16_t *)addr;
				break;
			case 4:
				*(uint32_t *)data = *(uint32_t *)addr;
				break;
			case 8:
				*(uint64_t *)data = *(uint64_t *)addr;
				break;
			}
		} else {
			char *src;

			src = (char *)addr;
			while (size-- > 0)
				*data++ = *src++;
		}
	}

	(void)FUNC0(prev_jb);
	return (ret);
}