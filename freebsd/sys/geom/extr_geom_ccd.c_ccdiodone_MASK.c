#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bio {scalar_t__ bio_cmd; scalar_t__ bio_error; int /*<<< orphan*/  bio_inbed; struct bio* bio_caller1; int /*<<< orphan*/  bio_from; struct bio* bio_parent; } ;

/* Variables and functions */
 scalar_t__ BIO_READ ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 

__attribute__((used)) static void
FUNC3(struct bio *cbp)
{
	struct bio *mbp, *pbp;

	mbp = cbp->bio_caller1;
	pbp = cbp->bio_parent;

	if (pbp->bio_cmd == BIO_READ) {
		if (cbp->bio_error == 0) {
			/* We will not be needing the partner bio */
			if (mbp != NULL) {
				pbp->bio_inbed++;
				FUNC0(mbp);
			}
			FUNC2(cbp);
			return;
		}
		if (mbp != NULL) {
			/* Try partner the bio instead */
			mbp->bio_caller1 = NULL;
			pbp->bio_inbed++;
			FUNC0(cbp);
			FUNC1(mbp, mbp->bio_from);
			/*
			 * XXX: If this comes back OK, we should actually
			 * try to write the good data on the failed mirror
			 */
			return;
		}
		FUNC2(cbp);
		return;
	}
	if (mbp != NULL) {
		mbp->bio_caller1 = NULL;
		pbp->bio_inbed++;
		if (cbp->bio_error != 0 && pbp->bio_error == 0)
			pbp->bio_error = cbp->bio_error;
		FUNC0(cbp);
		return;
	}
	FUNC2(cbp);
}