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
struct g_raid_md_object {int dummy; } ;
struct g_raid_md_ddf_perdisk {int /*<<< orphan*/  pd_meta; } ;
struct g_raid_disk {int /*<<< orphan*/ * d_md_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MD_DDF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid_md_ddf_perdisk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct g_raid_md_object *md,
    struct g_raid_disk *disk)
{
	struct g_raid_md_ddf_perdisk *pd;

	pd = (struct g_raid_md_ddf_perdisk *)disk->d_md_data;
	FUNC0(&pd->pd_meta);
	FUNC1(pd, M_MD_DDF);
	disk->d_md_data = NULL;
	return (0);
}