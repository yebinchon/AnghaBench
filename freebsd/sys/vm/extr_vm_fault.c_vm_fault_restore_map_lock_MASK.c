#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct faultstate {int lookup_still_valid; TYPE_1__* first_object; int /*<<< orphan*/  map; } ;
struct TYPE_4__ {int /*<<< orphan*/  paging_in_progress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct faultstate *fs)
{

	FUNC2(fs->first_object);
	FUNC0(FUNC1(fs->first_object->paging_in_progress) > 0);

	if (!FUNC6(fs->map)) {
		FUNC4(fs->first_object);
		FUNC5(fs->map);
		FUNC3(fs->first_object);
	}
	fs->lookup_still_valid = true;
}