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
struct udpcb {int u_flags; } ;
struct sockopt {scalar_t__ sopt_name; scalar_t__ sopt_dir; } ;
struct inpcb {int dummy; } ;
typedef  int /*<<< orphan*/  optval ;

/* Variables and functions */
 int EINVAL ; 
 int ENOPROTOOPT ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 scalar_t__ SOPT_GET ; 
 scalar_t__ UDP_ENCAP ; 
#define  UDP_ENCAP_ESPINUDP 128 
 int UF_ESPINUDP ; 
 struct udpcb* FUNC3 (struct inpcb*) ; 
 int FUNC4 (struct sockopt*,int*,int,int) ; 
 int FUNC5 (struct sockopt*,int*,int) ; 

int
FUNC6(struct inpcb *inp, struct sockopt *sopt)
{
	struct udpcb *up;
	int error, optval;

	FUNC1(inp);
	if (sopt->sopt_name != UDP_ENCAP) {
		FUNC2(inp);
		return (ENOPROTOOPT);
	}

	up = FUNC3(inp);
	if (sopt->sopt_dir == SOPT_GET) {
		if (up->u_flags & UF_ESPINUDP)
			optval = UDP_ENCAP_ESPINUDP;
		else
			optval = 0;
		FUNC2(inp);
		return (FUNC5(sopt, &optval, sizeof(optval)));
	}
	FUNC2(inp);

	error = FUNC4(sopt, &optval, sizeof(optval), sizeof(optval));
	if (error != 0)
		return (error);

	FUNC0(inp);
	switch (optval) {
	case 0:
		up->u_flags &= ~UF_ESPINUDP;
		break;
	case UDP_ENCAP_ESPINUDP:
		up->u_flags |= UF_ESPINUDP;
		break;
	default:
		error = EINVAL;
	}
	FUNC2(inp);
	return (error);
}