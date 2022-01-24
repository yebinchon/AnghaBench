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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/ * FUNC0 (int,size_t) ; 
 int FUNC1 (int,size_t,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t secsz ; 

int
FUNC3(int fd, size_t count)
{
	static uint8_t *zeroes = NULL;
	size_t sz;
	int error;

	if (FUNC2(fd, (off_t)count, SEEK_CUR) != -1)
		return (0);

	/*
	 * If we can't seek, we must write.
	 */

	if (zeroes == NULL) {
		zeroes = FUNC0(1, secsz);
		if (zeroes == NULL)
			return (ENOMEM);
	}

	while (count > 0) {
		sz = (count > secsz) ? secsz : count;
		error = FUNC1(fd, sz, zeroes);
		if (error)
			return (error);
		count -= sz;
	}
	return (0);
}