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
struct commit_extra_header {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct commit*,unsigned long*) ; 
 struct commit_extra_header* FUNC1 (char const*,unsigned long,char const**) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*,char const*) ; 

struct commit_extra_header *FUNC3(struct commit *commit,
						      const char **exclude)
{
	struct commit_extra_header *extra = NULL;
	unsigned long size;
	const char *buffer = FUNC0(commit, &size);
	extra = FUNC1(buffer, size, exclude);
	FUNC2(commit, buffer);
	return extra;
}