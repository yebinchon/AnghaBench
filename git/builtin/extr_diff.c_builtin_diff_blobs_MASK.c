#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rev_info {int /*<<< orphan*/  diffopt; } ;
struct object_array_entry {unsigned int mode; TYPE_1__* item; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 unsigned int S_IFINVALID ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (struct object_array_entry*) ; 
 int /*<<< orphan*/  builtin_diff_usage ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rev_info *revs,
			      int argc, const char **argv,
			      struct object_array_entry **blob)
{
	const unsigned mode = FUNC1(S_IFREG | 0644);

	if (argc > 1)
		FUNC5(builtin_diff_usage);

	if (blob[0]->mode == S_IFINVALID)
		blob[0]->mode = mode;

	if (blob[1]->mode == S_IFINVALID)
		blob[1]->mode = mode;

	FUNC4(&revs->diffopt,
		     blob[0]->mode, blob[1]->mode,
		     &blob[0]->item->oid, &blob[1]->item->oid,
		     1, 1,
		     FUNC0(blob[0]), FUNC0(blob[1]));
	FUNC3(&revs->diffopt);
	FUNC2(&revs->diffopt);
	return 0;
}