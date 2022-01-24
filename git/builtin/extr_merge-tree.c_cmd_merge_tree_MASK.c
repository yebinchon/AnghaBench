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
struct tree_desc {int dummy; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (struct repository*,struct tree_desc*,char const*) ; 
 int /*<<< orphan*/  merge_tree_usage ; 
 int /*<<< orphan*/  FUNC2 (struct tree_desc*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct repository* the_repository ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(int argc, const char **argv, const char *prefix)
{
	struct repository *r = the_repository;
	struct tree_desc t[3];
	void *buf1, *buf2, *buf3;

	if (argc != 4)
		FUNC4(merge_tree_usage);

	buf1 = FUNC1(r, t+0, argv[1]);
	buf2 = FUNC1(r, t+1, argv[2]);
	buf3 = FUNC1(r, t+2, argv[3]);
	FUNC2(t, "");
	FUNC0(buf1);
	FUNC0(buf2);
	FUNC0(buf3);

	FUNC3();
	return 0;
}