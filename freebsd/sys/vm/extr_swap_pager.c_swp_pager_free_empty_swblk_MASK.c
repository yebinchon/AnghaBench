#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_object_t ;
struct swblk {int /*<<< orphan*/  p; } ;
struct TYPE_5__ {int /*<<< orphan*/  swp_blks; } ;
struct TYPE_6__ {TYPE_1__ swp; } ;
struct TYPE_7__ {TYPE_2__ un_pager; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAP_META_PAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swblk_zone ; 
 scalar_t__ FUNC1 (struct swblk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct swblk*) ; 

__attribute__((used)) static void
FUNC3(vm_object_t object, struct swblk *sb)
{

	if (FUNC1(sb, 0, SWAP_META_PAGES)) {
		FUNC0(&object->un_pager.swp.swp_blks, sb->p);
		FUNC2(swblk_zone, sb);
	}
}