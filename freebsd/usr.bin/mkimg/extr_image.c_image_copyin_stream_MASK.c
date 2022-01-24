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
typedef  scalar_t__ uint64_t ;
typedef  int ssize_t ;
typedef  long long off_t ;
typedef  int lba_t ;

/* Variables and functions */
 int errno ; 
 int FUNC0 (int,char*,int,long long,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,long long,size_t,long long*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 long long FUNC3 (size_t) ; 
 int /*<<< orphan*/  image_swap_fd ; 
 int image_swap_pgsz ; 
 int FUNC4 (int,char*,size_t) ; 
 int secsz ; 

__attribute__((used)) static int
FUNC5(lba_t blk, int fd, uint64_t *sizep)
{
	char *buffer;
	uint64_t bytesize;
	off_t swofs;
	size_t iosz;
	ssize_t rdsz;
	int error;
	off_t iof;

	/*
	 * This makes sure we're doing I/O in multiples of the page
	 * size as well as of the sector size. 2MB is the minimum
	 * by virtue of secsz at least 512 bytes and the page size
	 * at least 4K bytes.
	 */
	iosz = secsz * image_swap_pgsz;

	bytesize = 0;
	do {
		swofs = FUNC3(iosz);
		if (swofs == -1LL)
			return (errno);
		buffer = FUNC1(image_swap_fd, swofs, iosz, &iof);
		if (buffer == NULL)
			return (errno);
		rdsz = FUNC4(fd, &buffer[iof], iosz);
		if (rdsz > 0)
			error = FUNC0(blk, &buffer[iof], rdsz, swofs,
			    image_swap_fd);
		else if (rdsz < 0)
			error = errno;
		else
			error = 0;
		FUNC2(buffer, iosz);
		/* XXX should we relinguish unused swap space? */
		if (error)
			return (error);

		bytesize += rdsz;
		blk += (rdsz + secsz - 1) / secsz;
	} while (rdsz > 0);

	if (sizep != NULL)
		*sizep = bytesize;
	return (0);
}