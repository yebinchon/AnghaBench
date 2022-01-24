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
typedef  void* jmp_buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/ * gdb_rxp ; 
 size_t gdb_rxsz ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,size_t) ; 
 void* FUNC4 (void*) ; 
 int FUNC5 (void*) ; 

int
FUNC6(unsigned char *addr, size_t size)
{
	unsigned char *p;
	void *prev;
	void *wctx;
	jmp_buf jb;
	size_t cnt;
	int ret;
	unsigned char c;

	if (size * 2 != gdb_rxsz)
		return (-1);

	wctx = FUNC1();
	prev = FUNC4(jb);
	ret = FUNC5(jb);
	if (ret == 0) {
		p = addr;
		cnt = size;
		while (cnt-- > 0) {
			c = (FUNC0(gdb_rxp[0]) << 4) & 0xf0;
			c |= FUNC0(gdb_rxp[1]) & 0x0f;
			*p++ = c;
			gdb_rxsz -= 2;
			gdb_rxp += 2;
		}
		FUNC3(addr, size);
	}
	(void)FUNC4(prev);
	FUNC2(wctx);
	return ((ret == 0) ? 1 : 0);
}