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
struct macro_definition {char* defn; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/ * ndptr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 
 struct macro_definition* FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(const char *argv[], int argc)
{
	ndptr n;
	struct macro_definition *p = NULL;

	n = FUNC2(argv[2]);
	if (n == NULL || (p = FUNC4(n)) == NULL)
		FUNC3(1, "indir: undefined macro %s.", argv[2]);
	argv[1] = p->defn;

	FUNC0(argv+1, argc-1, p->type, FUNC1(n));
}