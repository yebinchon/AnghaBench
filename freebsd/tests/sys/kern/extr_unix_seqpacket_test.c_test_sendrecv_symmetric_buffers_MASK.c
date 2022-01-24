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
typedef  int /*<<< orphan*/  bufsize ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,int,char*,int const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MSG_EOR ; 
 int /*<<< orphan*/  MSG_WAITALL ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int,char*,int const,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,char*,int const,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC11(int bufsize, int blocking) {
	int s;
	int sv[2];
	const ssize_t pktsize = bufsize / 2;
	char sndbuf[pktsize];
	char recv_buf[pktsize];
	ssize_t ssize, rsize;

	/* setup the socket pair */
	if (blocking)
		FUNC5(sv);
	else
		FUNC6(sv);

	/* Setup the buffers */
	s = FUNC10(sv[0], SOL_SOCKET, SO_SNDBUF, &bufsize, sizeof(bufsize));
	FUNC1(0, s);
	s = FUNC10(sv[1], SOL_SOCKET, SO_RCVBUF, &bufsize, sizeof(bufsize));
	FUNC1(0, s);

	/* Fill the send buffer */
	FUNC3(sndbuf, pktsize);

	/* send and receive the packet */
	ssize = FUNC9(sv[0], sndbuf, pktsize, MSG_EOR);
	if (ssize < 0) {
		FUNC7("send");
		FUNC2("send returned < 0");
	}
	FUNC0(pktsize, ssize, "expected %zd=send(...) but got %zd",
	    pktsize, ssize);

	rsize = FUNC8(sv[1], recv_buf, pktsize, MSG_WAITALL);
	if (rsize < 0) {
		FUNC7("recv");
		FUNC2("recv returned < 0");
	}
	FUNC0(pktsize, rsize, "expected %zd=send(...) but got %zd",
	    pktsize, rsize);
	FUNC4(sv[0]);
	FUNC4(sv[1]);
}