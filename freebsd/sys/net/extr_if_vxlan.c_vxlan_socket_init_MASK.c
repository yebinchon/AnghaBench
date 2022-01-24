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
typedef  int /*<<< orphan*/  val ;
struct TYPE_3__ {int /*<<< orphan*/  sa_family; } ;
struct TYPE_4__ {TYPE_1__ sa; } ;
struct vxlan_socket {int /*<<< orphan*/  vxlso_sock; TYPE_2__ vxlso_laddr; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct sockopt {int* sopt_val; int sopt_valsize; int /*<<< orphan*/  sopt_name; int /*<<< orphan*/  sopt_level; int /*<<< orphan*/  sopt_dir; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  sopt ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOPT_SET ; 
 int /*<<< orphan*/  SO_REUSEPORT ; 
 int /*<<< orphan*/  FUNC0 (struct sockopt*,int) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sockopt*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vxlan_socket*) ; 
 int /*<<< orphan*/  vxlan_rcv_udp_packet ; 
 scalar_t__ vxlan_reuse_port ; 

__attribute__((used)) static int
FUNC5(struct vxlan_socket *vso, struct ifnet *ifp)
{
	struct thread *td;
	int error;

	td = curthread;

	error = FUNC2(vso->vxlso_laddr.sa.sa_family, &vso->vxlso_sock,
	    SOCK_DGRAM, IPPROTO_UDP, td->td_ucred, td);
	if (error) {
		FUNC1(ifp, "cannot create socket: %d\n", error);
		return (error);
	}

	error = FUNC4(vso->vxlso_sock,
	    vxlan_rcv_udp_packet, NULL, vso);
	if (error) {
		FUNC1(ifp, "cannot set tunneling function: %d\n", error);
		return (error);
	}

	if (vxlan_reuse_port != 0) {
		struct sockopt sopt;
		int val = 1;

		FUNC0(&sopt, sizeof(sopt));
		sopt.sopt_dir = SOPT_SET;
		sopt.sopt_level = IPPROTO_IP;
		sopt.sopt_name = SO_REUSEPORT;
		sopt.sopt_val = &val;
		sopt.sopt_valsize = sizeof(val);
		error = FUNC3(vso->vxlso_sock, &sopt);
		if (error) {
			FUNC1(ifp,
			    "cannot set REUSEADDR socket opt: %d\n", error);
			return (error);
		}
	}

	return (0);
}