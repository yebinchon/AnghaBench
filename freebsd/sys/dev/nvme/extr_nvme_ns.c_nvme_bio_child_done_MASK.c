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
struct nvme_completion {int dummy; } ;
struct bio {struct bio* bio_parent; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int) ; 
 scalar_t__ FUNC2 (struct nvme_completion const*) ; 

__attribute__((used)) static void
FUNC3(void *arg, const struct nvme_completion *cpl)
{
	struct bio		*child = arg;
	struct bio		*parent;
	int			bio_error;

	parent = child->bio_parent;
	FUNC0(child);
	bio_error = FUNC2(cpl) ? EIO : 0;
	FUNC1(parent, bio_error);
}