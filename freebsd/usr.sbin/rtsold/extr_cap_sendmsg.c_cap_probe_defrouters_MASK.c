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
struct ifinfo {int /*<<< orphan*/  linkid; TYPE_1__* sdl; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;
struct TYPE_2__ {int /*<<< orphan*/  sdl_index; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(cap_channel_t *cap, struct ifinfo *ifinfo)
{
#ifdef WITH_CASPER
	nvlist_t *nvl;
	int error;

	nvl = nvlist_create(0);
	nvlist_add_string(nvl, "cmd", "probe_defrouters");
	nvlist_add_number(nvl, "ifindex", ifinfo->sdl->sdl_index);
	nvlist_add_number(nvl, "linkid", ifinfo->linkid);

	nvl = cap_xfer_nvlist(cap, nvl);
	if (nvl == NULL)
		return (errno);
	error = (int)dnvlist_get_number(nvl, "error", 0);
	nvlist_destroy(nvl);
	errno = error;
	return (error == 0 ? 0 : -1);
#else
	(void)cap;
	return (FUNC6(ifinfo->sdl->sdl_index, ifinfo->linkid));
#endif
}