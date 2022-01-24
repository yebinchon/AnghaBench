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
struct mytree {int /*<<< orphan*/  top; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mytree* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  fsubs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC6(int argc, char **argv)
{
	struct mytree *t1, *t2;
	int i;

	fsubs = FUNC3("_.subs", "w");
	FUNC4(stdout, NULL);
	FUNC4(stderr, NULL);
	if (argc != 3)
		FUNC2(1, "usage: %s file1 file2", argv[0]);

	t1 = FUNC1(argv[1]);
	if (t1 == NULL)
		FUNC2(2, "XML parser error on file %s", argv[1]);
	FUNC5(t1->top);
	t2 = FUNC1(argv[2]);
	if (t2 == NULL)
		FUNC2(2, "XML parser error on file %s", argv[2]);
	FUNC5(t2->top);
	i = FUNC0(t1->top, t2->top, 0);
	return (i);
}