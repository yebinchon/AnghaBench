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
typedef  scalar_t__ u_int16_t ;
struct sockopt {int sopt_level; int sopt_name; int* sopt_val; int sopt_valsize; void* sopt_dir; } ;
struct socket {TYPE_2__* so_proto; int /*<<< orphan*/  so_vnet; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int sa_family; int /*<<< orphan*/  sa_len; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  opt ;
typedef  int /*<<< orphan*/  old ;
typedef  scalar_t__ bool_t ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;} ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EPFNOSUPPORT ; 
 scalar_t__ FALSE ; 
 int IPPROTO_IP ; 
 int IPPROTO_IPV6 ; 
 int IPV6_PORTRANGE ; 
 int IPV6_PORTRANGE_LOW ; 
 int IP_PORTRANGE ; 
 int IP_PORTRANGE_LOW ; 
 int /*<<< orphan*/  M_SONAME ; 
 void* SOPT_GET ; 
 void* SOPT_SET ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct sockopt*,int) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct socket*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct socket*,struct sockopt*) ; 
 int FUNC7 (struct socket*,struct sockopt*) ; 
 int FUNC8 (struct socket*,struct sockaddr**) ; 

int
FUNC9(struct socket *so, struct sockaddr *sa)
{
	int old, error, af;
	bool_t freesa = FALSE;
	struct sockaddr_in *sin;
#ifdef INET6
	struct sockaddr_in6 *sin6;
#endif
	struct sockopt opt;
	int proto, portrange, portlow;
	u_int16_t *portp;
	socklen_t salen;

	if (sa == NULL) {
		FUNC1(so->so_vnet);
		error = so->so_proto->pr_usrreqs->pru_sockaddr(so, &sa);
		FUNC0();
		if (error)
			return (error);
		freesa = TRUE;
		af = sa->sa_family;
		salen = sa->sa_len;
		FUNC4(sa, 0, sa->sa_len);
	} else {
		af = sa->sa_family;
		salen = sa->sa_len;
	}

	switch (af) {
	case AF_INET:
		proto = IPPROTO_IP;
		portrange = IP_PORTRANGE;
		portlow = IP_PORTRANGE_LOW;
		sin = (struct sockaddr_in *)sa;
		portp = &sin->sin_port;
		break;
#ifdef INET6
	case AF_INET6:
		proto = IPPROTO_IPV6;
		portrange = IPV6_PORTRANGE;
		portlow = IPV6_PORTRANGE_LOW;
		sin6 = (struct sockaddr_in6 *)sa;
		portp = &sin6->sin6_port;
		break;
#endif
	default:
		return (EPFNOSUPPORT);
	}

	sa->sa_family = af;
	sa->sa_len = salen;

	if (*portp == 0) {
		FUNC2(&opt, sizeof(opt));
		opt.sopt_dir = SOPT_GET;
		opt.sopt_level = proto;
		opt.sopt_name = portrange;
		opt.sopt_val = &old;
		opt.sopt_valsize = sizeof(old);
		error = FUNC6(so, &opt);
		if (error) {
			goto out;
		}

		opt.sopt_dir = SOPT_SET;
		opt.sopt_val = &portlow;
		error = FUNC7(so, &opt);
		if (error)
			goto out;
	}

	error = FUNC5(so, sa, curthread);

	if (*portp == 0) {
		if (error) {
			opt.sopt_dir = SOPT_SET;
			opt.sopt_val = &old;
			FUNC7(so, &opt);
		}
	}
out:
	if (freesa)
		FUNC3(sa, M_SONAME);

	return (error);
}