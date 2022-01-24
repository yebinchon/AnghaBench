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
 void* FUNC0 (void*) ; 
 unsigned char* FUNC1 (unsigned char const*,size_t,unsigned char const*,size_t) ; 
 int FUNC2 (void*) ; 

int
FUNC3(const unsigned char *addr, size_t size, const unsigned char *pat, size_t patlen, const unsigned char **found)
{
	void *prev;
	jmp_buf jb;
	int ret;

	prev = FUNC0(jb);
	ret = FUNC2(jb);
	if (ret == 0)
		*found = FUNC1(addr, size, pat, patlen);

	(void)FUNC0(prev);
	return ((ret == 0) ? 1 : 0);
}