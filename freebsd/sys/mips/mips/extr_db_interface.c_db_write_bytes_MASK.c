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
typedef  int /*<<< orphan*/  db_addr_t ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (void*) ; 

int
FUNC4(vm_offset_t addr, size_t size, char *data)
{
	int ret;
	jmp_buf jb;
	void *prev_jb;

	prev_jb = FUNC0(jb);
	ret = FUNC3(jb);

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
				*(uint16_t *)addr = *(uint16_t *)data;
				break;
			case 4:
				*(uint32_t *)addr = *(uint32_t *)data;
				break;
			case 8:
				*(uint64_t *)addr = *(uint64_t *)data;
				break;
			}
		} else {
			char *dst;
			size_t len = size;

			dst = (char *)addr;
			while (len-- > 0)
				*dst++ = *data++;
		}

		FUNC2((db_addr_t) addr, size);
		FUNC1((db_addr_t) addr, size);
	}
	(void)FUNC0(prev_jb);
	return (ret);
}