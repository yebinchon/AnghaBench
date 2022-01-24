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
typedef  int /*<<< orphan*/  u_int ;
struct sockopt {int sopt_name; } ;
struct ip6_moptions {int /*<<< orphan*/  im6o_multicast_loop; int /*<<< orphan*/  im6o_multicast_hlim; TYPE_3__* im6o_multicast_ifp; } ;
struct inpcb {TYPE_2__* inp_socket; struct ip6_moptions* in6p_moptions; } ;
struct TYPE_6__ {int /*<<< orphan*/  if_index; } ;
struct TYPE_5__ {TYPE_1__* so_proto; } ;
struct TYPE_4__ {scalar_t__ pr_protocol; scalar_t__ pr_type; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int ENOPROTOOPT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 scalar_t__ IPPROTO_DIVERT ; 
#define  IPV6_MSFILTER 131 
#define  IPV6_MULTICAST_HOPS 130 
#define  IPV6_MULTICAST_IF 129 
#define  IPV6_MULTICAST_LOOP 128 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_RAW ; 
 int /*<<< orphan*/  V_ip6_defmcasthlim ; 
 int /*<<< orphan*/  in6_mcast_loop ; 
 int FUNC3 (struct inpcb*,struct sockopt*) ; 
 int FUNC4 (struct sockopt*,int /*<<< orphan*/ *,int) ; 

int
FUNC5(struct inpcb *inp, struct sockopt *sopt)
{
	struct ip6_moptions	*im6o;
	int			 error;
	u_int			 optval;

	FUNC1(inp);
	im6o = inp->in6p_moptions;
	/*
	 * If socket is neither of type SOCK_RAW or SOCK_DGRAM,
	 * or is a divert socket, reject it.
	 */
	if (inp->inp_socket->so_proto->pr_protocol == IPPROTO_DIVERT ||
	    (inp->inp_socket->so_proto->pr_type != SOCK_RAW &&
	    inp->inp_socket->so_proto->pr_type != SOCK_DGRAM)) {
		FUNC2(inp);
		return (EOPNOTSUPP);
	}

	error = 0;
	switch (sopt->sopt_name) {
	case IPV6_MULTICAST_IF:
		if (im6o == NULL || im6o->im6o_multicast_ifp == NULL) {
			optval = 0;
		} else {
			optval = im6o->im6o_multicast_ifp->if_index;
		}
		FUNC2(inp);
		error = FUNC4(sopt, &optval, sizeof(u_int));
		break;

	case IPV6_MULTICAST_HOPS:
		if (im6o == NULL)
			optval = V_ip6_defmcasthlim;
		else
			optval = im6o->im6o_multicast_hlim;
		FUNC2(inp);
		error = FUNC4(sopt, &optval, sizeof(u_int));
		break;

	case IPV6_MULTICAST_LOOP:
		if (im6o == NULL)
			optval = in6_mcast_loop; /* XXX VIMAGE */
		else
			optval = im6o->im6o_multicast_loop;
		FUNC2(inp);
		error = FUNC4(sopt, &optval, sizeof(u_int));
		break;

	case IPV6_MSFILTER:
		if (im6o == NULL) {
			error = EADDRNOTAVAIL;
			FUNC2(inp);
		} else {
			error = FUNC3(inp, sopt);
		}
		break;

	default:
		FUNC2(inp);
		error = ENOPROTOOPT;
		break;
	}

	FUNC0(inp);

	return (error);
}