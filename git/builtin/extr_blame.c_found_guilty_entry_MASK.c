#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct progress_info {int /*<<< orphan*/  blamed_lines; int /*<<< orphan*/  progress; } ;
struct blame_origin {TYPE_2__* commit; } ;
struct blame_entry {int s_lno; int lno; int num_lines; struct blame_origin* suspect; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct blame_origin*,int /*<<< orphan*/ ) ; 
 scalar_t__ incremental ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (struct blame_origin*) ; 

__attribute__((used)) static void FUNC6(struct blame_entry *ent, void *data)
{
	struct progress_info *pi = (struct progress_info *)data;

	if (incremental) {
		struct blame_origin *suspect = ent->suspect;

		FUNC4("%s %d %d %d\n",
		       FUNC3(&suspect->commit->object.oid),
		       ent->s_lno + 1, ent->lno + 1, ent->num_lines);
		FUNC1(suspect, 0);
		FUNC5(suspect);
		FUNC2(stdout, "stdout");
	}
	pi->blamed_lines += ent->num_lines;
	FUNC0(pi->progress, pi->blamed_lines);
}