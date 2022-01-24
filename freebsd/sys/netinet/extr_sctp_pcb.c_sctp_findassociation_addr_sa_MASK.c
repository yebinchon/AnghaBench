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
typedef  int /*<<< orphan*/  uint32_t ;
struct sockaddr {int dummy; } ;
struct sctp_tcb {int dummy; } ;
struct sctp_nets {int dummy; } ;
struct sctp_inpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sctp_tcb* FUNC2 (struct sctp_inpcb**,struct sockaddr*,struct sctp_nets**,struct sockaddr*,int /*<<< orphan*/ *) ; 
 struct sctp_inpcb* FUNC3 (struct sockaddr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sctp_tcb* FUNC4 (struct sctp_inpcb**,struct sockaddr*,struct sockaddr*,struct sctp_nets**,int /*<<< orphan*/ ) ; 

struct sctp_tcb *
FUNC5(struct sockaddr *from, struct sockaddr *to,
    struct sctp_inpcb **inp_p, struct sctp_nets **netp, int find_tcp_pool,
    uint32_t vrf_id)
{
	struct sctp_inpcb *inp = NULL;
	struct sctp_tcb *stcb;

	FUNC0();
	if (find_tcp_pool) {
		if (inp_p != NULL) {
			stcb = FUNC4(inp_p, from, to, netp,
			    vrf_id);
		} else {
			stcb = FUNC4(&inp, from, to, netp,
			    vrf_id);
		}
		if (stcb != NULL) {
			FUNC1();
			return (stcb);
		}
	}
	inp = FUNC3(to, 0, 1, vrf_id);
	if (inp_p != NULL) {
		*inp_p = inp;
	}
	FUNC1();
	if (inp == NULL) {
		return (NULL);
	}
	/*
	 * ok, we have an endpoint, now lets find the assoc for it (if any)
	 * we now place the source address or from in the to of the find
	 * endpoint call. Since in reality this chain is used from the
	 * inbound packet side.
	 */
	if (inp_p != NULL) {
		stcb = FUNC2(inp_p, from, netp, to,
		    NULL);
	} else {
		stcb = FUNC2(&inp, from, netp, to,
		    NULL);
	}
	return (stcb);
}