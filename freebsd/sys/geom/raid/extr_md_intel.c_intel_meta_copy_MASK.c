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
struct intel_raid_conf {int /*<<< orphan*/  config_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MD_INTEL ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct intel_raid_conf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_raid_conf*,struct intel_raid_conf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct intel_raid_conf *
FUNC2(struct intel_raid_conf *meta)
{
	struct intel_raid_conf *nmeta;

	nmeta = FUNC0(meta->config_size, M_MD_INTEL, M_WAITOK);
	FUNC1(nmeta, meta, meta->config_size);
	return (nmeta);
}