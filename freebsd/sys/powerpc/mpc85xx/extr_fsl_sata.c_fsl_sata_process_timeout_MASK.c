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
struct fsl_sata_channel {TYPE_1__* slot; int /*<<< orphan*/  mtx; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSL_SATA_ERR_TIMEOUT ; 
 int FSL_SATA_MAX_SLOTS ; 
 scalar_t__ FSL_SATA_SLOT_RUNNING ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct fsl_sata_channel *ch)
{
	int i;

	FUNC1(&ch->mtx, MA_OWNED);
	/* Handle the rest of commands. */
	for (i = 0; i < FSL_SATA_MAX_SLOTS; i++) {
		/* Do we have a running request on slot? */
		if (ch->slot[i].state < FSL_SATA_SLOT_RUNNING)
			continue;
		FUNC0(&ch->slot[i], FSL_SATA_ERR_TIMEOUT);
	}
}