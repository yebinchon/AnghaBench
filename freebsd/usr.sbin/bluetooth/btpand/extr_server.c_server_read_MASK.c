#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct sockaddr_l2cap {int /*<<< orphan*/  l2cap_bdaddr; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  ra ;
typedef  int /*<<< orphan*/  n ;
typedef  int /*<<< orphan*/  mtu ;
typedef  int /*<<< orphan*/  mru ;
typedef  int /*<<< orphan*/  la ;
struct TYPE_6__ {int mru; int mtu; int /*<<< orphan*/  state; int /*<<< orphan*/  laddr; int /*<<< orphan*/  raddr; int /*<<< orphan*/  recv; int /*<<< orphan*/  send; } ;
typedef  TYPE_1__ channel_t ;

/* Variables and functions */
 int BNEP_MTU_MIN ; 
 int /*<<< orphan*/  CHANNEL_CLOSED ; 
 int /*<<< orphan*/  CHANNEL_WAIT_CONNECT_REQ ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  SOL_L2CAP ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_L2CAP_IMTU ; 
 int /*<<< orphan*/  SO_L2CAP_OMTU ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  SO_SNDLOWAT ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bnep_recv ; 
 int /*<<< orphan*/  bnep_send ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int,struct sockaddr*,int*) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC14(int s, short ev, void *arg)
{
	struct sockaddr_l2cap ra, la;
	channel_t *chan;
	socklen_t len;
	int fd, n;
	uint16_t mru, mtu;

	len = sizeof(ra);
	fd = FUNC0(s, (struct sockaddr *)&ra, &len);
	if (fd == -1)
		return;

	n = 1;
	if (FUNC10(fd, FIONBIO, &n) == -1) {
		FUNC11("Could not set NonBlocking IO: %m");
		FUNC7(fd);
		return;
	}

	len = sizeof(mru);
	if (FUNC9(fd, SOL_L2CAP, SO_L2CAP_IMTU, &mru, &len) == -1) {
		FUNC11("Could not get L2CAP IMTU: %m");
		FUNC7(fd);
		return;
	}
	if(mru < BNEP_MTU_MIN) {
		FUNC11("L2CAP IMTU too small (%d)", mru);
		FUNC7(fd);
		return;
	}

	len = sizeof(n);
	if (FUNC9(fd, SOL_SOCKET, SO_RCVBUF, &n, &len) == -1) {
		FUNC11("Could not read SO_RCVBUF");
		FUNC7(fd);
		return;
	}
	if (n < (mru * 10)) {
		n = mru * 10;
		if (FUNC13(fd, SOL_SOCKET, SO_RCVBUF, &n, sizeof(n)) == -1)
			FUNC12("Could not increase SO_RCVBUF (from %d)", n);
	}

	len = sizeof(mtu);
	if (FUNC9(fd, SOL_L2CAP, SO_L2CAP_OMTU, &mtu, &len) == -1) {
		FUNC11("Could not get L2CAP OMTU: %m");
		FUNC7(fd);
		return;
	}
	if (mtu < BNEP_MTU_MIN) {
		FUNC11("L2CAP OMTU too small (%d)", mtu);
		FUNC7(fd);
		return;
	}

	len = sizeof(n);
	if (FUNC9(fd, SOL_SOCKET, SO_SNDBUF, &n, &len) == -1) {
		FUNC11("Could not get socket send buffer size: %m");
		FUNC7(fd);
		return;
	}

	if (n < (mtu * 2)) {
		n = mtu * 2;
		if (FUNC13(fd, SOL_SOCKET, SO_SNDBUF, &n, sizeof(n)) == -1) {
			FUNC11("Could not set socket send buffer size (%d): %m", n);
			FUNC7(fd);
			return;
		}
	}

	n = mtu;
	if (FUNC13(fd, SOL_SOCKET, SO_SNDLOWAT, &n, sizeof(n)) == -1) {
		FUNC11("Could not set socket low water mark (%d): %m", n);
		FUNC7(fd);
		return;
	}

	len = sizeof(la);
	if (FUNC8(fd, (struct sockaddr *)&la, &len) == -1) {
		FUNC11("Could not get socket address: %m");
		FUNC7(fd);
		return;
	}

	FUNC12("Accepted connection from %s", FUNC2(&ra.l2cap_bdaddr, NULL));

	chan = FUNC3();
	if (chan == NULL) {
		FUNC7(fd);
		return;
	}

	chan->send = bnep_send;
	chan->recv = bnep_recv;
	chan->mru = mru;
	chan->mtu = mtu;
	FUNC1(chan->raddr, &ra.l2cap_bdaddr);
	FUNC1(chan->laddr, &la.l2cap_bdaddr);
	chan->state = CHANNEL_WAIT_CONNECT_REQ;
	FUNC6(chan, 10);
	if (!FUNC5(chan, fd)) {
		chan->state = CHANNEL_CLOSED;
		FUNC4(chan);
		FUNC7(fd);
		return;
	}
}