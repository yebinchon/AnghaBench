#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct table_info {int dummy; } ;
struct iftable_cfg {int /*<<< orphan*/  ii; } ;
struct ifentry {int dummy; } ;
struct TYPE_5__ {char* iface; } ;
struct TYPE_6__ {TYPE_1__ k; } ;
typedef  TYPE_2__ ipfw_obj_tentry ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ IF_NAMESIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct table_info*,struct ifentry*,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC3(void *ta_state, struct table_info *ti,
    ipfw_obj_tentry *tent)
{
	struct iftable_cfg *icfg;
	struct ifentry *ife;
	char *ifname;

	icfg = (struct iftable_cfg *)ta_state;
	ifname = tent->k.iface;

	if (FUNC1(ifname, IF_NAMESIZE) == IF_NAMESIZE)
		return (EINVAL);

	ife = (struct ifentry *)FUNC0(icfg->ii, 0, ifname);

	if (ife != NULL) {
		FUNC2(ta_state, ti, ife, tent);
		return (0);
	}

	return (ENOENT);
}