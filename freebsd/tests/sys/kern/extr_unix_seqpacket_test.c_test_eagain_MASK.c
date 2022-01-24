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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ EAGAIN ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  MSG_EOR ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t const) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int,char*,size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC10(int sndbufsize, int rcvbufsize)
{
	int i;
	int sv[2];
	const size_t totalsize = (sndbufsize + rcvbufsize) * 2;
	const size_t pktsize = FUNC1(sndbufsize, rcvbufsize) / 4;
	const int numpkts = totalsize / pktsize;
	char sndbuf[pktsize];
	ssize_t ssize;

	/* setup the socket pair */
	FUNC6(sv);
	/* Setup the buffers */
	FUNC0(0, FUNC9(sv[0], SOL_SOCKET, SO_SNDBUF, &sndbufsize,
	    sizeof(sndbufsize)));
	FUNC0(0, FUNC9(sv[1], SOL_SOCKET, SO_RCVBUF, &rcvbufsize,
	    sizeof(rcvbufsize)));

	FUNC4(sndbuf, pktsize);
	/* Send data until we get EAGAIN */
	for(i=0; i < numpkts; i++) {
		ssize = FUNC8(sv[0], sndbuf, pktsize, MSG_EOR);
		if (ssize == -1) {
			if (errno == EAGAIN) {
				FUNC5(sv[0]);
				FUNC5(sv[1]);
				FUNC3();
			}
			else {
				FUNC7("send");
				FUNC2("send returned < 0 but not EAGAIN");
			}
		}
	}
	FUNC2("Never got EAGAIN");
}