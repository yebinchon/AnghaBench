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
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ SSIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ lite ; 
 scalar_t__ FUNC1 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,unsigned long long) ; 
 scalar_t__ FUNC5 (int,char*,size_t) ; 

void
FUNC6(char *buffer, off_t bufferlength, int fd)
{
	off_t ret;
	ssize_t byteswritten;

	if (fd <= 0 || bufferlength == 0)
		return;

	if (bufferlength > SSIZE_MAX) {
		FUNC2("fsx flaw: overflow in save_buffer\n");
		FUNC0(67);
	}
	if (lite) {
		off_t size_by_seek = FUNC1(fd, (off_t)0, SEEK_END);
		if (size_by_seek == (off_t)-1)
			FUNC3("save_buffer: lseek eof");
		else if (bufferlength > size_by_seek) {
			FUNC4("save_buffer: .fsxgood file too short... will save 0x%llx bytes instead of 0x%llx\n", (unsigned long long)size_by_seek,
			     (unsigned long long)bufferlength);
			bufferlength = size_by_seek;
		}
	}

	ret = FUNC1(fd, (off_t)0, SEEK_SET);
	if (ret == (off_t)-1)
		FUNC3("save_buffer: lseek 0");
	
	byteswritten = FUNC5(fd, buffer, (size_t)bufferlength);
	if (byteswritten != bufferlength) {
		if (byteswritten == -1)
			FUNC3("save_buffer write");
		else
			FUNC4("save_buffer: short write, 0x%x bytes instead of 0x%llx\n",
			     (unsigned)byteswritten,
			     (unsigned long long)bufferlength);
	}
}