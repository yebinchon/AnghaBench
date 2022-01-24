#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_mesh_proto_metric {int /*<<< orphan*/  mpm_descr; } ;
struct TYPE_4__ {int mpm_active; int /*<<< orphan*/  mpm_descr; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOSPC ; 
 int /*<<< orphan*/  IEEE80211_MESH_PROTO_DSZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct ieee80211_mesh_proto_metric const*,int) ; 
 TYPE_1__* mesh_proto_metrics ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(const struct
    ieee80211_mesh_proto_metric *mpm)
{
	int i, firstempty = -1;

	for (i = 0; i < FUNC1(mesh_proto_metrics); i++) {
		if (FUNC2(mpm->mpm_descr, mesh_proto_metrics[i].mpm_descr,
		    IEEE80211_MESH_PROTO_DSZ) == 0)
			return EEXIST;
		if (!mesh_proto_metrics[i].mpm_active && firstempty == -1)
			firstempty = i;
	}
	if (firstempty < 0)
		return ENOSPC;
	FUNC0(&mesh_proto_metrics[firstempty], mpm, sizeof(*mpm));
	mesh_proto_metrics[firstempty].mpm_active = 1;
	return 0;
}