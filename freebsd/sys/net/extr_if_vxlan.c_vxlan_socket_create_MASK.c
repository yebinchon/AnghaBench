#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_6__ {TYPE_2__ sin_addr; } ;
union vxlan_sockaddr {TYPE_1__ in6; TYPE_3__ in4; } ;
struct vxlan_socket {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 scalar_t__ FUNC0 (union vxlan_sockaddr*) ; 
 int /*<<< orphan*/  in6addr_any ; 
 struct vxlan_socket* FUNC1 (union vxlan_sockaddr*) ; 
 int FUNC2 (struct vxlan_socket*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct vxlan_socket*) ; 
 int FUNC4 (struct vxlan_socket*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct vxlan_socket*) ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp, int multicast,
    const union vxlan_sockaddr *saddr, struct vxlan_socket **vsop)
{
	union vxlan_sockaddr laddr;
	struct vxlan_socket *vso;
	int error;

	laddr = *saddr;

	/*
	 * If this socket will be multicast, then only the local port
	 * must be specified when binding.
	 */
	if (multicast != 0) {
		if (FUNC0(&laddr))
			laddr.in4.sin_addr.s_addr = INADDR_ANY;
#ifdef INET6
		else
			laddr.in6.sin6_addr = in6addr_any;
#endif
	}

	vso = FUNC1(&laddr);
	if (vso == NULL)
		return (ENOMEM);

	error = FUNC4(vso, ifp);
	if (error)
		goto fail;

	error = FUNC2(vso, ifp);
	if (error)
		goto fail;

	/*
	 * There is a small window between the bind completing and
	 * inserting the socket, so that a concurrent create may fail.
	 * Let's not worry about that for now.
	 */
	FUNC5(vso);
	*vsop = vso;

	return (0);

fail:
	FUNC3(vso);

	return (error);
}