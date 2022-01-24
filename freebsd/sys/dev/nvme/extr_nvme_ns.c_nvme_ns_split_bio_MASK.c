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
typedef  int /*<<< orphan*/  uint32_t ;
struct nvme_namespace {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_NVME ; 
 int /*<<< orphan*/  FUNC0 (struct bio**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  nvme_bio_child_done ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int) ; 
 struct bio** FUNC3 (struct bio*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct nvme_namespace*,struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct nvme_namespace *ns, struct bio *bp,
    uint32_t alignment)
{
	struct bio	*child;
	struct bio	**child_bios;
	int		err, i, num_bios;

	child_bios = FUNC3(bp, alignment, &num_bios);
	if (child_bios == NULL)
		return (ENOMEM);

	for (i = 0; i < num_bios; i++) {
		child = child_bios[i];
		err = FUNC4(ns, child, nvme_bio_child_done);
		if (err != 0) {
			FUNC2(bp, err);
			FUNC1(child);
		}
	}

	FUNC0(child_bios, M_NVME);
	return (0);
}