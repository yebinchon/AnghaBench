#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  iso9660_disk ;
struct TYPE_13__ {TYPE_1__* isoDirRecord; int /*<<< orphan*/  cn_children; } ;
typedef  TYPE_2__ cd9660node ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cd9660_children_head ; 
 int FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  cn_next_child ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(iso9660_disk *diskStructure, cd9660node *colliding,
    int past)
{
	cd9660node *iter, *next, *prev;
	int skip;
	int delete_chars = 0;
	int temp_past = past;
	int temp_skip;
	int flag = 0;
	cd9660node *end_of_range;

	for (iter = FUNC0(&colliding->cn_children);
	     iter != NULL && (next = FUNC1(iter, cn_next_child)) != NULL;) {
		if (FUNC5(iter->isoDirRecord->name,
		           next->isoDirRecord->name) != 0) {
			iter = FUNC1(iter, cn_next_child);
			continue;
		}
		flag = 1;
		temp_skip = skip = FUNC3(iter);
		end_of_range = iter;
		while (temp_skip > 0) {
			temp_skip--;
			end_of_range = FUNC1(end_of_range, cn_next_child);
		}
		temp_past = past;
		while (temp_past > 0) {
			if ((next = FUNC1(end_of_range, cn_next_child)) != NULL)
				end_of_range = next;
			else if ((prev = FUNC2(iter, cd9660_children_head, cn_next_child)) != NULL)
				iter = prev;
			else
				delete_chars++;
			temp_past--;
		}
		skip += past;
		iter = FUNC4(diskStructure, iter, skip,
		    delete_chars);
	}
	return flag;
}