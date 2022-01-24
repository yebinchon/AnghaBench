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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 size_t FUNC2 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC3(FILE *fp, int cnt)
{
	char *cp;
	size_t error, readlen;

	while (cnt != 0 && (cp = FUNC1(fp, &readlen)) != NULL) {
		error = FUNC2(cp, sizeof(char), readlen, stdout);
		if (error != readlen)
			FUNC0(1, "stdout");
		cnt--;
	}
}