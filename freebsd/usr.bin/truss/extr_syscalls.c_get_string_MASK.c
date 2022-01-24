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
struct ptrace_io_desc {char* piod_addr; size_t piod_len; void* piod_offs; int /*<<< orphan*/  piod_op; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 size_t MAXSIZE ; 
 uintptr_t PAGE_SIZE ; 
 int /*<<< orphan*/  PIOD_READ_D ; 
 int /*<<< orphan*/  PT_IO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,size_t) ; 

__attribute__((used)) static char *
FUNC5(pid_t pid, uintptr_t addr, int max)
{
	struct ptrace_io_desc iorequest;
	char *buf, *nbuf;
	size_t offset, size, totalsize;

	offset = 0;
	if (max)
		size = max + 1;
	else {
		/* Read up to the end of the current page. */
		size = PAGE_SIZE - ((uintptr_t)addr % PAGE_SIZE);
		if (size > MAXSIZE)
			size = MAXSIZE;
	}
	totalsize = size;
	buf = FUNC1(totalsize);
	if (buf == NULL)
		return (NULL);
	for (;;) {
		iorequest.piod_op = PIOD_READ_D;
		iorequest.piod_offs = (void *)(addr + offset);
		iorequest.piod_addr = buf + offset;
		iorequest.piod_len = size;
		if (FUNC3(PT_IO, pid, (caddr_t)&iorequest, 0) < 0) {
			FUNC0(buf);
			return (NULL);
		}
		if (FUNC2(buf + offset, '\0', size) != NULL)
			return (buf);
		offset += size;
		if (totalsize < MAXSIZE && max == 0) {
			size = MAXSIZE - totalsize;
			if (size > PAGE_SIZE)
				size = PAGE_SIZE;
			nbuf = FUNC4(buf, totalsize + size);
			if (nbuf == NULL) {
				buf[totalsize - 1] = '\0';
				return (buf);
			}
			buf = nbuf;
			totalsize += size;
		} else {
			buf[totalsize - 1] = '\0';
			return (buf);
		}
	}
}