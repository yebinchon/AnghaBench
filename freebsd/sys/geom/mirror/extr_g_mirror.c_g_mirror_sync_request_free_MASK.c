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
struct TYPE_2__ {struct bio** ds_bios; } ;
struct g_mirror_disk {TYPE_1__ d_sync; } ;
struct bio {int /*<<< orphan*/  bio_data; scalar_t__ bio_caller1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_MIRROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 

__attribute__((used)) static void
FUNC3(struct g_mirror_disk *disk, struct bio *bp)
{
	int idx;

	if (disk != NULL && disk->d_sync.ds_bios != NULL) {
		idx = (int)(uintptr_t)bp->bio_caller1;
		FUNC0(disk->d_sync.ds_bios[idx] == bp,
		    ("unexpected sync BIO at %p:%d", disk, idx));
		disk->d_sync.ds_bios[idx] = NULL;
	}
	FUNC1(bp->bio_data, M_MIRROR);
	FUNC2(bp);
}