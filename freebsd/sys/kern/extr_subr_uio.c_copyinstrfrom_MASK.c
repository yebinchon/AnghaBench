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

/* Variables and functions */
#define  UIO_SYSSPACE 129 
#define  UIO_USERSPACE 128 
 int FUNC0 (void const*,void*,size_t,size_t*) ; 
 int FUNC1 (void const*,void*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int
FUNC3(const void * __restrict src, void * __restrict dst, size_t len,
    size_t * __restrict copied, int seg)
{
	int error = 0;

	switch (seg) {
	case UIO_USERSPACE:
		error = FUNC0(src, dst, len, copied);
		break;
	case UIO_SYSSPACE:
		error = FUNC1(src, dst, len, copied);
		break;
	default:
		FUNC2("copyinstrfrom: bad seg %d\n", seg);
	}
	return (error);
}