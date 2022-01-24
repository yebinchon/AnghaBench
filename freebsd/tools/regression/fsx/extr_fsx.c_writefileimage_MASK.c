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
typedef  int ssize_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  fd ; 
 scalar_t__ file_size ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  good_buf ; 
 scalar_t__ lite ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC6()
{
	ssize_t iret;

	if (FUNC1(fd, (off_t)0, SEEK_SET) == (off_t)-1) {
		FUNC3("writefileimage: lseek");
		FUNC4(171);
	}
	iret = FUNC5(fd, good_buf, file_size);
	if ((off_t)iret != file_size) {
		if (iret == -1)
			FUNC3("writefileimage: write");
		else
			FUNC2("short write: 0x%x bytes instead of 0x%llx\n",
			    iret, (unsigned long long)file_size);
		FUNC4(172);
	}
	if (lite ? 0 : FUNC0(fd, file_size) == -1) {
		FUNC2("ftruncate2: %llx\n", (unsigned long long)file_size);
		FUNC3("writefileimage: ftruncate");
		FUNC4(173);
	}
}