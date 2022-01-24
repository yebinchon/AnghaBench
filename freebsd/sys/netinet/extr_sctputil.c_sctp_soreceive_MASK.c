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
typedef  int /*<<< orphan*/  uint8_t ;
struct uio {int dummy; } ;
struct socket {scalar_t__ so_pcb; } ;
struct sockaddr {scalar_t__ sa_len; } ;
struct sctp_sndrcvinfo {int dummy; } ;
struct sctp_inpcb {int dummy; } ;
struct sctp_extrcvinfo {int dummy; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  sockbuf ;

/* Variables and functions */
 int EINVAL ; 
 int MSG_NOTIFICATION ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  SCTP_FROM_SCTPUTIL ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_inpcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SCTP_PCB_FLAGS_RECVDATAIOEVNT ; 
 int /*<<< orphan*/  SCTP_PCB_FLAGS_RECVNXTINFO ; 
 int /*<<< orphan*/  SCTP_PCB_FLAGS_RECVRCVINFO ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_extrcvinfo*,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC2 (struct sctp_inpcb*,struct sctp_sndrcvinfo*) ; 
 scalar_t__ FUNC3 (struct sctp_inpcb*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct socket*,struct uio*,struct mbuf**,struct sockaddr*,int,int*,struct sctp_sndrcvinfo*,int) ; 
 struct sockaddr* FUNC5 (struct sockaddr*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct socket *so,
    struct sockaddr **psa,
    struct uio *uio,
    struct mbuf **mp0,
    struct mbuf **controlp,
    int *flagsp)
{
	int error, fromlen;
	uint8_t sockbuf[256];
	struct sockaddr *from;
	struct sctp_extrcvinfo sinfo;
	int filling_sinfo = 1;
	int flags;
	struct sctp_inpcb *inp;

	inp = (struct sctp_inpcb *)so->so_pcb;
	/* pickup the assoc we are reading from */
	if (inp == NULL) {
		FUNC0(inp, NULL, NULL, SCTP_FROM_SCTPUTIL, EINVAL);
		return (EINVAL);
	}
	if ((FUNC3(inp, SCTP_PCB_FLAGS_RECVDATAIOEVNT) &&
	    FUNC3(inp, SCTP_PCB_FLAGS_RECVRCVINFO) &&
	    FUNC3(inp, SCTP_PCB_FLAGS_RECVNXTINFO)) ||
	    (controlp == NULL)) {
		/* user does not want the sndrcv ctl */
		filling_sinfo = 0;
	}
	if (psa) {
		from = (struct sockaddr *)sockbuf;
		fromlen = sizeof(sockbuf);
		from->sa_len = 0;
	} else {
		from = NULL;
		fromlen = 0;
	}

	if (filling_sinfo) {
		FUNC1(&sinfo, 0, sizeof(struct sctp_extrcvinfo));
	}
	if (flagsp != NULL) {
		flags = *flagsp;
	} else {
		flags = 0;
	}
	error = FUNC4(so, uio, mp0, from, fromlen, &flags,
	    (struct sctp_sndrcvinfo *)&sinfo, filling_sinfo);
	if (flagsp != NULL) {
		*flagsp = flags;
	}
	if (controlp != NULL) {
		/* copy back the sinfo in a CMSG format */
		if (filling_sinfo && ((flags & MSG_NOTIFICATION) == 0)) {
			*controlp = FUNC2(inp,
			    (struct sctp_sndrcvinfo *)&sinfo);
		} else {
			*controlp = NULL;
		}
	}
	if (psa) {
		/* copy back the address info */
		if (from && from->sa_len) {
			*psa = FUNC5(from, M_NOWAIT);
		} else {
			*psa = NULL;
		}
	}
	return (error);
}