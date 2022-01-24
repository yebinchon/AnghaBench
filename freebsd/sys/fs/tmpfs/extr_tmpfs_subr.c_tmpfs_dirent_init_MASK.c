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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {int /*<<< orphan*/  td_name; } ;
struct tmpfs_dirent {int /*<<< orphan*/  td_namelen; TYPE_1__ ud; int /*<<< orphan*/  td_cookie; int /*<<< orphan*/  td_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct tmpfs_dirent *de, const char *name, u_int namelen)
{
	de->td_hash = de->td_cookie = FUNC1(name, namelen);
	FUNC0(de->ud.td_name, name, namelen);
	de->td_namelen = namelen;
}