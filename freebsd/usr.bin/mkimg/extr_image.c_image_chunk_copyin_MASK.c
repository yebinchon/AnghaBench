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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t off_t ;
typedef  scalar_t__ lba_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,size_t,size_t,int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 size_t secsz ; 

__attribute__((used)) static int
FUNC3(lba_t blk, void *buf, size_t sz, off_t ofs, int fd)
{
	uint8_t *p = buf;
	int error;

	error = 0;
	sz = (sz + secsz - 1) & ~(secsz - 1);
	while (!error && sz > 0) {
		if (FUNC2(p))
			error = FUNC1(blk + 1);
		else
			error = FUNC0(blk, secsz, ofs, fd);
		blk++;
		p += secsz;
		sz -= secsz;
		ofs += secsz;
	}
	return (error);
}