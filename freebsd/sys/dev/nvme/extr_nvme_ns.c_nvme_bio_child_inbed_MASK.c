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
struct nvme_completion {int status; } ;
struct bio {int bio_flags; int bio_error; int /*<<< orphan*/  bio_inbed; int /*<<< orphan*/  bio_children; } ;
typedef  int /*<<< orphan*/  parent_cpl ;

/* Variables and functions */
 int BIO_ERROR ; 
 int NVME_SC_DATA_TRANSFER_ERROR ; 
 int NVME_STATUS_SC_MASK ; 
 int NVME_STATUS_SC_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_completion*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct nvme_completion*) ; 

__attribute__((used)) static void
FUNC4(struct bio *parent, int bio_error)
{
	struct nvme_completion	parent_cpl;
	int			children, inbed;

	if (bio_error != 0) {
		parent->bio_flags |= BIO_ERROR;
		parent->bio_error = bio_error;
	}

	/*
	 * atomic_fetchadd will return value before adding 1, so we still
	 *  must add 1 to get the updated inbed number.  Save bio_children
	 *  before incrementing to guard against race conditions when
	 *  two children bios complete on different queues.
	 */
	children = FUNC1(&parent->bio_children);
	inbed = FUNC0(&parent->bio_inbed, 1) + 1;
	if (inbed == children) {
		FUNC2(&parent_cpl, sizeof(parent_cpl));
		if (parent->bio_flags & BIO_ERROR) {
			parent_cpl.status &= ~(NVME_STATUS_SC_MASK << NVME_STATUS_SC_SHIFT);
			parent_cpl.status |= (NVME_SC_DATA_TRANSFER_ERROR) << NVME_STATUS_SC_SHIFT;
		}
		FUNC3(parent, &parent_cpl);
	}
}