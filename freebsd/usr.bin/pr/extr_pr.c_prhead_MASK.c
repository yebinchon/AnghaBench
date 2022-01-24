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

/* Variables and functions */
 scalar_t__ EOF ; 
 char* HDFMT ; 
 int offst ; 
 scalar_t__ FUNC0 (char*,int,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,int) ; 
 scalar_t__ FUNC3 (char) ; 

int
FUNC4(char *buf, const char *fname, int pagcnt)
{
	int ips = 0;
	int ops = 0;

	if ((FUNC3('\n') == EOF) || (FUNC3('\n') == EOF)) {
		FUNC1();
		return(1);
	}
	/*
	 * posix is not clear if the header is subject to line length
	 * restrictions. The specification for header line format
	 * in the spec clearly does not limit length. No pr currently
	 * restricts header length. However if we need to truncate in
	 * a reasonable way, adjust the length of the printf by
	 * changing HDFMT to allow a length max as an argument to printf.
	 * buf (which contains the offset spaces and time field could
	 * also be trimmed
	 *
	 * note only the offset (if any) is processed for tab expansion
	 */
	if (offst && FUNC0(buf, offst, &ips, &ops, -1))
		return(1);
	(void)FUNC2(HDFMT,buf+offst, fname, pagcnt);
	return(0);
}