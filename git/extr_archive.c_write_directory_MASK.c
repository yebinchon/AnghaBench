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
struct directory {char* path; int len; int baselen; int /*<<< orphan*/  stage; int /*<<< orphan*/  mode; int /*<<< orphan*/  oid; struct directory* up; } ;
struct archiver_context {struct directory* bottom; } ;

/* Variables and functions */
 scalar_t__ READ_TREE_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct directory*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct archiver_context*) ; 

__attribute__((used)) static int FUNC2(struct archiver_context *c)
{
	struct directory *d = c->bottom;
	int ret;

	if (!d)
		return 0;
	c->bottom = d->up;
	d->path[d->len - 1] = '\0'; /* no trailing slash */
	ret =
		FUNC2(c) ||
		FUNC1(&d->oid, d->path, d->baselen,
				    d->path + d->baselen, d->mode,
				    d->stage, c) != READ_TREE_RECURSIVE;
	FUNC0(d);
	return ret ? -1 : 0;
}