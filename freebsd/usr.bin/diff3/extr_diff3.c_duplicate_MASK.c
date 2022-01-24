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
struct range {int to; int from; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * fp ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(struct range *r1, struct range *r2)
{
	int c, d;
	int nchar;
	int nline;

	if (r1->to-r1->from != r2->to-r2->from)
		return (0);
	FUNC3(0, r1->from, NULL);
	FUNC3(1, r2->from, NULL);
	nchar = 0;
	for (nline=0; nline < r1->to - r1->from; nline++) {
		do {
			c = FUNC1(fp[0]);
			d = FUNC1(fp[1]);
			if (c == -1 || d== -1)
				FUNC0(EXIT_FAILURE, "logic error");
			nchar++;
			if (c != d) {
				FUNC2(nchar);
				return (0);
			}
		} while (c != '\n');
	}
	FUNC2(nchar);
	return (1);
}