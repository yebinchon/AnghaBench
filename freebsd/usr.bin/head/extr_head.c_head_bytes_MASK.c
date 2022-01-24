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
typedef  int uintmax_t ;
typedef  size_t off_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC3(FILE *fp, off_t cnt)
{
	char buf[4096];
	size_t readlen;

	while (cnt) {
		if ((uintmax_t)cnt < sizeof(buf))
			readlen = cnt;
		else
			readlen = sizeof(buf);
		readlen = FUNC1(buf, sizeof(char), readlen, fp);
		if (readlen == 0)
			break;
		if (FUNC2(buf, sizeof(char), readlen, stdout) != readlen)
			FUNC0(1, "stdout");
		cnt -= readlen;
	}
}