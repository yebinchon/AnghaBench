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
struct g_geom {int /*<<< orphan*/  consumer; } ;
struct bio {int /*<<< orphan*/  bio_done; TYPE_1__* bio_to; } ;
struct TYPE_2__ {struct g_geom* geom; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct bio* FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_mountver_done ; 

__attribute__((used)) static void
FUNC4(struct bio *bp)
{
	struct g_geom *gp;
	struct bio *cbp;

	gp = bp->bio_to->geom;

	cbp = FUNC1(bp);
	if (cbp == NULL) {
		FUNC2(bp, ENOMEM);
		return;
	}

	cbp->bio_done = g_mountver_done;
	FUNC3(cbp, FUNC0(&gp->consumer));
}