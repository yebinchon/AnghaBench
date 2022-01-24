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
struct bio {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_NVME ; 
 struct bio* FUNC0 () ; 
 struct bio** FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct bio**) ; 

__attribute__((used)) static struct bio **
FUNC3(int num_bios)
{
	struct bio **child_bios;
	int err = 0, i;

	child_bios = FUNC1(num_bios * sizeof(struct bio *), M_NVME, M_NOWAIT);
	if (child_bios == NULL)
		return (NULL);

	for (i = 0; i < num_bios; i++) {
		child_bios[i] = FUNC0();
		if (child_bios[i] == NULL)
			err = ENOMEM;
	}

	if (err == ENOMEM) {
		FUNC2(num_bios, child_bios);
		return (NULL);
	}

	return (child_bios);
}