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
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gs_mtx; int /*<<< orphan*/  gs_pending; int /*<<< orphan*/  gs_npending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 TYPE_1__ me ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct bio *bio)
{

	FUNC1(&me.gs_mtx);
	me.gs_npending++;
	FUNC0(&me.gs_pending, bio);
	FUNC2(&me.gs_mtx);
}