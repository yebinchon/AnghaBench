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
struct sockopt {int sopt_level; int sopt_dir; int sopt_name; int sopt_valsize; } ;
struct socket {int dummy; } ;
struct inpcb {struct icmp6_filter* in6p_icmp6filt; } ;
struct icmp6_filter {int dummy; } ;
typedef  int /*<<< orphan*/  ic6f ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOPROTOOPT ; 
#define  ICMP6_FILTER 130 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*) ; 
 int IPPROTO_ICMPV6 ; 
#define  PRCO_GETOPT 129 
#define  PRCO_SETOPT 128 
 int FUNC4 (struct sockopt*,struct icmp6_filter*,int,int) ; 
 int FUNC5 (struct sockopt*,struct icmp6_filter*,int) ; 
 struct inpcb* FUNC6 (struct socket*) ; 

int
FUNC7(struct socket *so, struct sockopt *sopt)
{
	int error = 0;
	int optlen;
	struct inpcb *inp = FUNC6(so);
	int level, op, optname;

	if (sopt) {
		level = sopt->sopt_level;
		op = sopt->sopt_dir;
		optname = sopt->sopt_name;
		optlen = sopt->sopt_valsize;
	} else
		level = op = optname = optlen = 0;

	if (level != IPPROTO_ICMPV6) {
		return EINVAL;
	}

	switch (op) {
	case PRCO_SETOPT:
		switch (optname) {
		case ICMP6_FILTER:
		    {
			struct icmp6_filter ic6f;

			if (optlen != sizeof(ic6f)) {
				error = EMSGSIZE;
				break;
			}
			error = FUNC4(sopt, &ic6f, optlen, optlen);
			if (error == 0) {
				FUNC2(inp);
				*inp->in6p_icmp6filt = ic6f;
				FUNC3(inp);
			}
			break;
		    }

		default:
			error = ENOPROTOOPT;
			break;
		}
		break;

	case PRCO_GETOPT:
		switch (optname) {
		case ICMP6_FILTER:
		    {
			struct icmp6_filter ic6f;

			FUNC0(inp);
			ic6f = *inp->in6p_icmp6filt;
			FUNC1(inp);
			error = FUNC5(sopt, &ic6f, sizeof(ic6f));
			break;
		    }

		default:
			error = ENOPROTOOPT;
			break;
		}
		break;
	}

	return (error);
}