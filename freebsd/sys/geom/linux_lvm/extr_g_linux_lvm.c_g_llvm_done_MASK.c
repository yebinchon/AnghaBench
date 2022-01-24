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
struct bio {scalar_t__ bio_error; scalar_t__ bio_inbed; scalar_t__ bio_children; scalar_t__ bio_length; scalar_t__ bio_completed; TYPE_1__* bio_to; int /*<<< orphan*/  bio_offset; struct bio* bio_parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct bio *b)
{
	struct bio *parent_b;

	parent_b = b->bio_parent;

	if (b->bio_error != 0) {
		FUNC0(0, "Error %d for offset=%ju, length=%ju on %s",
		    b->bio_error, b->bio_offset, b->bio_length,
		    b->bio_to->name);
		if (parent_b->bio_error == 0)
			parent_b->bio_error = b->bio_error;
	}

	parent_b->bio_inbed++;
	parent_b->bio_completed += b->bio_completed;

	if (parent_b->bio_children == parent_b->bio_inbed) {
		parent_b->bio_completed = parent_b->bio_length;
		FUNC2(parent_b, parent_b->bio_error);
	}
	FUNC1(b);
}