#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  fsnode ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ NODE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DEBUG_APPLY_SPECFILE ; 
 scalar_t__ EOF ; 
 scalar_t__ F_DIR ; 
 int /*<<< orphan*/  FUNC0 (struct timeval,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval) ; 
 int /*<<< orphan*/  FUNC2 (char const*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*) ; 

void
FUNC12(const char *specfile, const char *dir, fsnode *parent, int speconly)
{
	struct timeval	 start;
	FILE	*fp;
	NODE	*root;

	FUNC3(specfile != NULL);
	FUNC3(parent != NULL);

	if (debug & DEBUG_APPLY_SPECFILE)
		FUNC9("apply_specfile: %s, %s %p\n", specfile, dir, parent);

				/* read in the specfile */
	if ((fp = FUNC7(specfile, "r")) == NULL)
		FUNC4(1, "Can't open `%s'", specfile);
	FUNC1(start);
	root = FUNC10(fp);
	FUNC0(start, "spec");
	if (FUNC6(fp) == EOF)
		FUNC4(1, "Can't close `%s'", specfile);

				/* perform some sanity checks */
	if (root == NULL)
		FUNC5(1, "Specfile `%s' did not contain a tree", specfile);
	FUNC3(FUNC11(root->name, ".") == 0);
	FUNC3(root->type == F_DIR);

				/* merge in the changes */
	FUNC2(dir, root, parent, speconly);

	FUNC8(root);
}