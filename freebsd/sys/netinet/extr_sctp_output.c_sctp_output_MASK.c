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
struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sctp_inpcb {int /*<<< orphan*/ * sctp_socket; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SCTP_FROM_SCTP_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,struct sctp_inpcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct sockaddr*,struct uio*,struct mbuf*,struct mbuf*,int,struct thread*) ; 

int
FUNC2(
    struct sctp_inpcb *inp,
    struct mbuf *m,
    struct sockaddr *addr,
    struct mbuf *control,
    struct thread *p,
    int flags)
{
	if (inp == NULL) {
		FUNC0(m, inp, NULL, NULL, SCTP_FROM_SCTP_OUTPUT, EINVAL);
		return (EINVAL);
	}

	if (inp->sctp_socket == NULL) {
		FUNC0(m, inp, NULL, NULL, SCTP_FROM_SCTP_OUTPUT, EINVAL);
		return (EINVAL);
	}
	return (FUNC1(inp->sctp_socket,
	    addr,
	    (struct uio *)NULL,
	    m,
	    control,
	    flags, p
	    ));
}