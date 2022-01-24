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
typedef  int u_int ;
struct sockopt {int sopt_name; int sopt_valsize; } ;
struct ip6_moptions {int im6o_multicast_hlim; int im6o_multicast_loop; } ;
struct inpcb {TYPE_2__* inp_socket; } ;
typedef  int /*<<< orphan*/  hlim ;
struct TYPE_4__ {TYPE_1__* so_proto; } ;
struct TYPE_3__ {scalar_t__ pr_protocol; scalar_t__ pr_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 scalar_t__ IPPROTO_DIVERT ; 
#define  IPV6_JOIN_GROUP 139 
#define  IPV6_LEAVE_GROUP 138 
#define  IPV6_MSFILTER 137 
#define  IPV6_MULTICAST_HOPS 136 
#define  IPV6_MULTICAST_IF 135 
#define  IPV6_MULTICAST_LOOP 134 
#define  MCAST_BLOCK_SOURCE 133 
#define  MCAST_JOIN_GROUP 132 
#define  MCAST_JOIN_SOURCE_GROUP 131 
#define  MCAST_LEAVE_GROUP 130 
#define  MCAST_LEAVE_SOURCE_GROUP 129 
#define  MCAST_UNBLOCK_SOURCE 128 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_RAW ; 
 int V_ip6_defmcasthlim ; 
 int FUNC2 (struct inpcb*,struct sockopt*) ; 
 struct ip6_moptions* FUNC3 (struct inpcb*) ; 
 int FUNC4 (struct inpcb*,struct sockopt*) ; 
 int FUNC5 (struct inpcb*,struct sockopt*) ; 
 int FUNC6 (struct inpcb*,struct sockopt*) ; 
 int FUNC7 (struct inpcb*,struct sockopt*) ; 
 int FUNC8 (struct sockopt*,int*,int,int) ; 

int
FUNC9(struct inpcb *inp, struct sockopt *sopt)
{
	struct ip6_moptions	*im6o;
	int			 error;

	error = 0;

	/*
	 * If socket is neither of type SOCK_RAW or SOCK_DGRAM,
	 * or is a divert socket, reject it.
	 */
	if (inp->inp_socket->so_proto->pr_protocol == IPPROTO_DIVERT ||
	    (inp->inp_socket->so_proto->pr_type != SOCK_RAW &&
	     inp->inp_socket->so_proto->pr_type != SOCK_DGRAM))
		return (EOPNOTSUPP);

	switch (sopt->sopt_name) {
	case IPV6_MULTICAST_IF:
		error = FUNC6(inp, sopt);
		break;

	case IPV6_MULTICAST_HOPS: {
		int hlim;

		if (sopt->sopt_valsize != sizeof(int)) {
			error = EINVAL;
			break;
		}
		error = FUNC8(sopt, &hlim, sizeof(hlim), sizeof(int));
		if (error)
			break;
		if (hlim < -1 || hlim > 255) {
			error = EINVAL;
			break;
		} else if (hlim == -1) {
			hlim = V_ip6_defmcasthlim;
		}
		im6o = FUNC3(inp);
		im6o->im6o_multicast_hlim = hlim;
		FUNC1(inp);
		break;
	}

	case IPV6_MULTICAST_LOOP: {
		u_int loop;

		/*
		 * Set the loopback flag for outgoing multicast packets.
		 * Must be zero or one.
		 */
		if (sopt->sopt_valsize != sizeof(u_int)) {
			error = EINVAL;
			break;
		}
		error = FUNC8(sopt, &loop, sizeof(u_int), sizeof(u_int));
		if (error)
			break;
		if (loop > 1) {
			error = EINVAL;
			break;
		}
		im6o = FUNC3(inp);
		im6o->im6o_multicast_loop = loop;
		FUNC1(inp);
		break;
	}

	case IPV6_JOIN_GROUP:
	case MCAST_JOIN_GROUP:
	case MCAST_JOIN_SOURCE_GROUP:
		error = FUNC4(inp, sopt);
		break;

	case IPV6_LEAVE_GROUP:
	case MCAST_LEAVE_GROUP:
	case MCAST_LEAVE_SOURCE_GROUP:
		error = FUNC5(inp, sopt);
		break;

	case MCAST_BLOCK_SOURCE:
	case MCAST_UNBLOCK_SOURCE:
		error = FUNC2(inp, sopt);
		break;

	case IPV6_MSFILTER:
		error = FUNC7(inp, sopt);
		break;

	default:
		error = EOPNOTSUPP;
		break;
	}

	FUNC0(inp);

	return (error);
}