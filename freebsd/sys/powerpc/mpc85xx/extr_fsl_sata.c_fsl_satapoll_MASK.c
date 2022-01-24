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
typedef  scalar_t__ uint32_t ;
struct fsl_sata_channel {int /*<<< orphan*/  r_mem; } ;
struct cam_sim {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSL_SATA_P_HSTS ; 
 scalar_t__ FUNC1 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_sata_channel*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct cam_sim *sim)
{
	struct fsl_sata_channel *ch = (struct fsl_sata_channel *)FUNC1(sim);
	uint32_t istatus;

	/* Read interrupt statuses and process if any. */
	istatus = FUNC0(ch->r_mem, FSL_SATA_P_HSTS);
	if (istatus != 0)
		FUNC2(ch, istatus);
}