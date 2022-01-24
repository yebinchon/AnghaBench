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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sndbufsize ;
typedef  int /*<<< orphan*/  rcvbufsize ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EMSGSIZE ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  MSG_EOR ; 
 int /*<<< orphan*/  MSG_WAITALL ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int const) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int const) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int,char*,int const,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,char*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC14(int sndbufsize, int rcvbufsize)
{
	int num_sent, num_received;
	int sv[2];
	const ssize_t pktsize = FUNC4(sndbufsize, rcvbufsize) / 4;
	int numpkts;
	char sndbuf[pktsize];
	char rcvbuf[pktsize];
	char comparebuf[pktsize];
	ssize_t ssize, rsize;
	bool currently_sending = true;

	/* setup the socket pair */
	FUNC7(sv);
	/* Setup the buffers */
	FUNC1(0, FUNC13(sv[0], SOL_SOCKET, SO_SNDBUF, &sndbufsize,
	    sizeof(sndbufsize)));
	FUNC1(0, FUNC13(sv[1], SOL_SOCKET, SO_RCVBUF, &rcvbufsize,
	    sizeof(rcvbufsize)));

	/* Send a total amount of data comfortably greater than the buffers */
	numpkts = FUNC3(sndbufsize, rcvbufsize) * 8 / pktsize;
	for (num_sent=0, num_received=0;
	     num_sent < numpkts || num_received < numpkts; ) {
		if (currently_sending && num_sent < numpkts) {
			/* The simulated sending process */
			/* fill the buffer */
			FUNC9(sndbuf, num_sent, pktsize);
			ssize = FUNC12(sv[0], sndbuf, pktsize, MSG_EOR);
			if (ssize < 0) {
				/*
				 * XXX: This is bug-compatible with the kernel.
				 * The kernel returns EMSGSIZE when it should
				 * return EAGAIN
				 */
				if (errno == EAGAIN || errno == EMSGSIZE)
					currently_sending = false;
				else {
					FUNC10("send");
					FUNC5("send failed");
				}
			} else  {
				FUNC0(pktsize, ssize,
				    "expected %zd=send(...) but got %zd",
				    pktsize, ssize);
				num_sent++;
			}
		} else {
			/* The simulated receiving process */
			rsize = FUNC11(sv[1], rcvbuf, pktsize, MSG_WAITALL);
			if (rsize < 0) {
				if (errno == EAGAIN) {
					currently_sending = true;
					FUNC2(num_sent < numpkts,
					    "Packets were lost!");
				}
				else {
					FUNC10("recv");
					FUNC5("recv failed");
				}
			} else  {
				FUNC0(pktsize, rsize,
				    "expected %zd=recv(...) but got %zd",
				    pktsize, rsize);
				FUNC9(comparebuf, num_received, pktsize);
				FUNC0(0, FUNC8(comparebuf, rcvbuf,
				    			   pktsize),
				    "Received data miscompare");
				num_received++;
			}
		}
	}
	FUNC6(sv[0]);
	FUNC6(sv[1]);
}