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
struct nvd_disk {int /*<<< orphan*/  bioqlock; int /*<<< orphan*/  tq; TYPE_1__* ctrlr; int /*<<< orphan*/  disk; } ;
struct disk {scalar_t__ d_drv1; } ;
struct TYPE_2__ {int /*<<< orphan*/  disk_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NVD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nvd_disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctrlr_tailq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disk_head ; 
 int /*<<< orphan*/  FUNC3 (struct nvd_disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  global_tailq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvd_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct disk *dp)
{
	struct nvd_disk *ndisk = (struct nvd_disk *)dp->d_drv1;

	FUNC2(ndisk->disk);
	FUNC5(&nvd_lock);
	FUNC1(&disk_head, ndisk, global_tailq);
	FUNC1(&ndisk->ctrlr->disk_head, ndisk, ctrlr_tailq);
	if (FUNC0(&ndisk->ctrlr->disk_head))
		FUNC8(&ndisk->ctrlr->disk_head);
	FUNC6(&nvd_lock);
	FUNC7(ndisk->tq);
	FUNC4(&ndisk->bioqlock);
	FUNC3(ndisk, M_NVD);
}