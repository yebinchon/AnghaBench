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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; unsigned int sa_len; } ;
struct sctp_tcb {int dummy; } ;
struct sctp_inpcb {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int EALREADY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_tcb*) ; 
 struct sctp_tcb* FUNC4 (struct sctp_inpcb**,struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC5(struct sctp_inpcb *inp, struct sockaddr *addr,
    unsigned int totaddr,
    unsigned int *num_v4, unsigned int *num_v6,
    unsigned int limit)
{
	struct sockaddr *sa;
	struct sctp_tcb *stcb;
	unsigned int incr, at, i;

	at = 0;
	sa = addr;
	*num_v6 = *num_v4 = 0;
	/* account and validate addresses */
	if (totaddr == 0) {
		return (EINVAL);
	}
	for (i = 0; i < totaddr; i++) {
		if (at + sizeof(struct sockaddr) > limit) {
			return (EINVAL);
		}
		switch (sa->sa_family) {
#ifdef INET
		case AF_INET:
			incr = (unsigned int)sizeof(struct sockaddr_in);
			if (sa->sa_len != incr) {
				return (EINVAL);
			}
			(*num_v4) += 1;
			break;
#endif
#ifdef INET6
		case AF_INET6:
			{
				struct sockaddr_in6 *sin6;

				sin6 = (struct sockaddr_in6 *)sa;
				if (IN6_IS_ADDR_V4MAPPED(&sin6->sin6_addr)) {
					/* Must be non-mapped for connectx */
					return (EINVAL);
				}
				incr = (unsigned int)sizeof(struct sockaddr_in6);
				if (sa->sa_len != incr) {
					return (EINVAL);
				}
				(*num_v6) += 1;
				break;
			}
#endif
		default:
			return (EINVAL);
		}
		if ((at + incr) > limit) {
			return (EINVAL);
		}
		FUNC2(inp);
		stcb = FUNC4(&inp, sa, NULL, NULL, NULL);
		if (stcb != NULL) {
			FUNC3(stcb);
			return (EALREADY);
		} else {
			FUNC1(inp);
		}
		at += incr;
		sa = (struct sockaddr *)((caddr_t)sa + incr);
	}
	return (0);
}