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
struct vxlan_socket {int /*<<< orphan*/  vxlso_sock; union vxlan_sockaddr vxlso_laddr; } ;
struct thread {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct thread*) ; 

__attribute__((used)) static int
FUNC2(struct vxlan_socket *vso, struct ifnet *ifp)
{
	union vxlan_sockaddr laddr;
	struct thread *td;
	int error;

	td = curthread;
	laddr = vso->vxlso_laddr;

	error = FUNC1(vso->vxlso_sock, &laddr.sa, td);
	if (error) {
		if (error != EADDRINUSE)
			FUNC0(ifp, "cannot bind socket: %d\n", error);
		return (error);
	}

	return (0);
}