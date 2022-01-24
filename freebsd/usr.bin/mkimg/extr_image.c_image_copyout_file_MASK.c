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
 int errno ; 
 int FUNC0 (int,size_t,char*) ; 
 void* FUNC1 (int,size_t,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t) ; 
 size_t image_swap_pgsz ; 
 size_t secsz ; 

__attribute__((used)) static int
FUNC3(int fd, size_t size, int ifd, off_t iofs)
{
	void *mp;
	char *buf;
	size_t iosz, sz;
	int error;
	off_t iof;

	iosz = secsz * image_swap_pgsz;

	while (size > 0) {
		sz = (size > iosz) ? iosz : size;
		buf = mp = FUNC1(ifd, iofs, sz, &iof);
		if (buf == NULL)
			return (errno);
		buf += iof;
		error = FUNC0(fd, sz, buf);
		FUNC2(mp, sz);
		if (error)
			return (error);
		size -= sz;
		iofs += sz;
	}
	return (0);
}