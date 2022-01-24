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
struct object_id {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,struct object_id*) ; 
 struct commit* FUNC2 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static struct commit *FUNC3(const char *arg)
{
	struct object_id revkey;
	struct commit *r;

	if (FUNC1(arg, &revkey))
		FUNC0("Not a valid object name %s", arg);
	r = FUNC2(the_repository, &revkey);
	if (!r)
		FUNC0("Not a valid commit name %s", arg);

	return r;
}