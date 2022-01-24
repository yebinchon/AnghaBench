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
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (int,char*,size_t,scalar_t__) ; 

void *FUNC5(void *start, size_t length, int prot, int flags, int fd, off_t offset)
{
	size_t n = 0;

	if (start != NULL || flags != MAP_PRIVATE || prot != PROT_READ)
		FUNC0("Invalid usage of mmap when built with NO_MMAP");

	start = FUNC3(length);
	if (start == NULL) {
		errno = ENOMEM;
		return MAP_FAILED;
	}

	while (n < length) {
		ssize_t count = FUNC4(fd, (char *)start + n, length - n, offset + n);

		if (count == 0) {
			FUNC2((char *)start+n, 0, length-n);
			break;
		}

		if (count < 0) {
			FUNC1(start);
			errno = EACCES;
			return MAP_FAILED;
		}

		n += count;
	}

	return start;
}