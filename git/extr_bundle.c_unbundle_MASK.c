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
struct repository {int dummy; } ;
struct child_process {char const** argv; int in; int no_stdout; int git_cmd; } ;
struct bundle_header {int dummy; } ;

/* Variables and functions */
 int BUNDLE_VERBOSE ; 
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct child_process*) ; 
 scalar_t__ FUNC3 (struct repository*,struct bundle_header*,int /*<<< orphan*/ ) ; 

int FUNC4(struct repository *r, struct bundle_header *header,
	     int bundle_fd, int flags)
{
	const char *argv_index_pack[] = {"index-pack",
					 "--fix-thin", "--stdin", NULL, NULL};
	struct child_process ip = CHILD_PROCESS_INIT;

	if (flags & BUNDLE_VERBOSE)
		argv_index_pack[3] = "-v";

	if (FUNC3(r, header, 0))
		return -1;
	ip.argv = argv_index_pack;
	ip.in = bundle_fd;
	ip.no_stdout = 1;
	ip.git_cmd = 1;
	if (FUNC2(&ip))
		return FUNC1(FUNC0("index-pack died"));
	return 0;
}