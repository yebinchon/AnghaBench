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
struct uio {scalar_t__ uio_rw; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ UIO_READ ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*,int) ; 

__attribute__((used)) static int
FUNC2(char *base, const struct uio *uio)
{
	int r;

	r = FUNC0(base);
	if (r == -1 || (uio->uio_rw == UIO_READ && FUNC1(base, r) == -1))
		return (EFAULT);
	return (0);
}