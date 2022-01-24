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
struct commit {int dummy; } ;
struct blame_origin {int refcnt; int /*<<< orphan*/  next; struct commit* commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blame_origin*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*,struct blame_origin*) ; 

__attribute__((used)) static struct blame_origin *FUNC3(struct commit *commit, const char *path)
{
	struct blame_origin *o;
	FUNC0(o, path, path);
	o->commit = commit;
	o->refcnt = 1;
	o->next = FUNC1(commit);
	FUNC2(commit, o);
	return o;
}