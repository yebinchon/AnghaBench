#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union vxlan_sockaddr {int /*<<< orphan*/  sa; } ;
struct TYPE_3__ {scalar_t__ sa_family; } ;
struct TYPE_4__ {TYPE_1__ sa; } ;
struct vxlan_socket_mc_info {int vxlsomc_ifidx; int /*<<< orphan*/  vxlsomc_users; TYPE_2__ vxlsomc_saddr; TYPE_2__ vxlsomc_gaddr; } ;
struct vxlan_socket {struct vxlan_socket_mc_info* vxlso_mc; } ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VXLAN_SO_MC_MAX_GROUPS ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_socket*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct vxlan_socket_mc_info*,union vxlan_sockaddr const*,union vxlan_sockaddr const*,int) ; 
 int FUNC5 (struct vxlan_socket*,union vxlan_sockaddr const*,union vxlan_sockaddr const*,int*,union vxlan_sockaddr*) ; 
 int FUNC6 (struct vxlan_socket*,union vxlan_sockaddr const*,union vxlan_sockaddr*,int) ; 

__attribute__((used)) static int
FUNC7(struct vxlan_socket *vso,
    const union vxlan_sockaddr *group, const union vxlan_sockaddr *local,
    int ifidx, int *idx)
{
	union vxlan_sockaddr source;
	struct vxlan_socket_mc_info *mc;
	int i, empty, error;

	/*
	 * Within a socket, the same multicast group may be used by multiple
	 * interfaces, each with a different network identifier. But a socket
	 * may only join a multicast group once, so keep track of the users
	 * here.
	 */

	FUNC1(vso);
	for (empty = 0, i = 0; i < VXLAN_SO_MC_MAX_GROUPS; i++) {
		mc = &vso->vxlso_mc[i];

		if (mc->vxlsomc_gaddr.sa.sa_family == AF_UNSPEC) {
			empty++;
			continue;
		}

		if (FUNC4(mc, group, local, ifidx))
			goto out;
	}
	FUNC2(vso);

	if (empty == 0)
		return (ENOSPC);

	error = FUNC5(vso, group, local, &ifidx, &source);
	if (error)
		return (error);

	FUNC1(vso);
	for (i = 0; i < VXLAN_SO_MC_MAX_GROUPS; i++) {
		mc = &vso->vxlso_mc[i];

		if (mc->vxlsomc_gaddr.sa.sa_family == AF_UNSPEC) {
			FUNC3(&mc->vxlsomc_gaddr, &group->sa);
			FUNC3(&mc->vxlsomc_saddr, &source.sa);
			mc->vxlsomc_ifidx = ifidx;
			goto out;
		}
	}
	FUNC2(vso);

	error = FUNC6(vso, group, &source, ifidx);
	FUNC0(error == 0);

	return (ENOSPC);

out:
	mc->vxlsomc_users++;
	FUNC2(vso);

	*idx = i;

	return (0);
}