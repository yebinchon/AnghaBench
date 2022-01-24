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
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  DEF_BUF ; 
 size_t FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 size_t FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(FILE *fp, off_t len, char *buf, int reg)
{
	size_t l;

	if (reg) {
		if (FUNC3(fp, len, SEEK_CUR) == -1)
			FUNC1(1, NULL);
	}
	else {
		while (len > 0) {
			l = FUNC0(DEF_BUF, len);
			if (FUNC2(buf, sizeof(char), l, fp) != l)
				FUNC1(1, "cannot read buffer");
			len -= l;
		}
	}
}