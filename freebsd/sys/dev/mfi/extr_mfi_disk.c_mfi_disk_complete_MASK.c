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
struct mfi_frame_header {int dummy; } ;
struct mfi_disk {int dummy; } ;
struct bio {int bio_flags; scalar_t__ bio_error; scalar_t__ bio_resid; scalar_t__ bio_bcount; struct mfi_frame_header* bio_driver1; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {struct mfi_disk* d_drv1; } ;

/* Variables and functions */
 int BIO_ERROR ; 
 scalar_t__ EIO ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,char*,int,int) ; 

void
FUNC2(struct bio *bio)
{
	struct mfi_disk *sc;
	struct mfi_frame_header *hdr;

	sc = bio->bio_disk->d_drv1;
	hdr = bio->bio_driver1;

	if (bio->bio_flags & BIO_ERROR) {
		bio->bio_resid = bio->bio_bcount;
		if (bio->bio_error == 0)
			bio->bio_error = EIO;
		FUNC1(bio, "hard error", -1, 1);
	} else {
		bio->bio_resid = 0;
	}
	FUNC0(bio);
}