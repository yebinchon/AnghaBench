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
typedef  size_t off_t ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int MAP_NOCORE ; 
 int MAP_NOSYNC ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int image_swap_fd ; 
 size_t image_swap_pgsz ; 
 void* FUNC1 (int /*<<< orphan*/ *,size_t,int,int,int,size_t) ; 
 size_t secsz ; 

__attribute__((used)) static void *
FUNC2(int fd, off_t ofs, size_t sz, off_t *iofp)
{
	void *ptr;
	size_t unit;
	int flags, prot;
	off_t x;

	/* On Linux anyway ofs must also be page aligned */
	if ((x = (ofs % image_swap_pgsz)) != 0) {
	    ofs -= x;
	    sz += x;
	    *iofp = x;
	} else
	    *iofp = 0;
	unit = (secsz > image_swap_pgsz) ? secsz : image_swap_pgsz;
	FUNC0((unit & (unit - 1)) == 0);

	flags = MAP_NOCORE | MAP_NOSYNC | MAP_SHARED;
	/* Allow writing to our swap file only. */
	prot = PROT_READ | ((fd == image_swap_fd) ? PROT_WRITE : 0);
	sz = (sz + unit - 1) & ~(unit - 1);
	ptr = FUNC1(NULL, sz, prot, flags, fd, ofs);
	return ((ptr == MAP_FAILED) ? NULL : ptr);
}