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
union vxlan_sockaddr {int /*<<< orphan*/  sa; } ;
struct vxlan_socket_mc_info {int vxlsomc_ifidx; int /*<<< orphan*/  vxlsomc_gaddr; int /*<<< orphan*/  vxlsomc_saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union vxlan_sockaddr const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(const struct vxlan_socket_mc_info *mc,
    const union vxlan_sockaddr *group, const union vxlan_sockaddr *local,
    int ifidx)
{

	if (!FUNC0(local) &&
	    !FUNC1(&mc->vxlsomc_saddr, &local->sa))
		return (0);
	if (!FUNC1(&mc->vxlsomc_gaddr, &group->sa))
		return (0);
	if (ifidx != 0 && ifidx != mc->vxlsomc_ifidx)
		return (0);

	return (1);
}