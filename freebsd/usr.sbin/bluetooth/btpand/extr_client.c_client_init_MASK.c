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
struct sockaddr_l2cap {int l2cap_len; int /*<<< orphan*/  l2cap_bdaddr; int /*<<< orphan*/  l2cap_psm; scalar_t__ l2cap_cid; int /*<<< orphan*/  l2cap_bdaddr_type; int /*<<< orphan*/  l2cap_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  n ;
typedef  int /*<<< orphan*/  mtu ;
typedef  int /*<<< orphan*/  mru ;
struct TYPE_6__ {int mru; int mtu; int /*<<< orphan*/  state; int /*<<< orphan*/  laddr; int /*<<< orphan*/  raddr; int /*<<< orphan*/  recv; int /*<<< orphan*/  send; } ;
typedef  TYPE_1__ channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int /*<<< orphan*/  BDADDR_BREDR ; 
 int /*<<< orphan*/  BLUETOOTH_PROTO_L2CAP ; 
 int BNEP_MTU_MIN ; 
 int /*<<< orphan*/  BNEP_SETUP_CONNECTION_REQUEST ; 
 int /*<<< orphan*/  CHANNEL_WAIT_CONNECT_RSP ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  PF_BLUETOOTH ; 
 int /*<<< orphan*/  SDP_SERVICE_CLASS_PANU ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 int /*<<< orphan*/  SOL_L2CAP ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_L2CAP_IMTU ; 
 int /*<<< orphan*/  SO_L2CAP_OMTU ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  SO_SNDLOWAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  bnep_recv ; 
 int /*<<< orphan*/  bnep_send ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2cap_psm ; 
 int /*<<< orphan*/  local_bdaddr ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC17 (struct sockaddr_l2cap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  remote_bdaddr ; 
 int /*<<< orphan*/  service_class ; 
 scalar_t__ service_name ; 
 int FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC20(void)
{
	struct sockaddr_l2cap sa;
	channel_t *chan;
	socklen_t len;
	int fd, n;
	uint16_t mru, mtu;

	if (FUNC1(&remote_bdaddr))
		return;

	if (service_name)
		FUNC9();

	fd = FUNC19(PF_BLUETOOTH, SOCK_SEQPACKET, BLUETOOTH_PROTO_L2CAP);
	if (fd == -1) {
		FUNC15("Could not open L2CAP socket: %m");
		FUNC12(EXIT_FAILURE);
	}

	FUNC17(&sa, 0, sizeof(sa));
	sa.l2cap_family = AF_BLUETOOTH;
	sa.l2cap_len = sizeof(sa);
	sa.l2cap_bdaddr_type = BDADDR_BREDR;
	sa.l2cap_cid = 0;
	 
	FUNC2(&sa.l2cap_bdaddr, &local_bdaddr);
	if (FUNC3(fd, (struct sockaddr *)&sa, sizeof(sa)) == -1) {
		FUNC15("Could not bind client socket: %m");
		FUNC12(EXIT_FAILURE);
	}

	mru = BNEP_MTU_MIN;
	if (FUNC18(fd, SOL_L2CAP, SO_L2CAP_IMTU, &mru, sizeof(mru)) == -1) {
		FUNC15("Could not set L2CAP IMTU (%d): %m", mru);
		FUNC12(EXIT_FAILURE);
	}

	FUNC16("Opening connection to service 0x%4.4x at %s",
	    service_class, FUNC5(&remote_bdaddr, NULL));

	sa.l2cap_psm = FUNC14(l2cap_psm);
	FUNC2(&sa.l2cap_bdaddr, &remote_bdaddr);
	if (FUNC11(fd, (struct sockaddr *)&sa, sizeof(sa)) == -1) {
		FUNC15("Could not connect: %m");
		FUNC12(EXIT_FAILURE);
	}

	len = sizeof(mru);
	if (FUNC13(fd, SOL_L2CAP, SO_L2CAP_IMTU, &mru, &len) == -1) {
		FUNC15("Could not get IMTU: %m");
		FUNC12(EXIT_FAILURE);
	}
	if (mru < BNEP_MTU_MIN) {
		FUNC15("L2CAP IMTU too small (%d)", mru);
		FUNC12(EXIT_FAILURE);
	}

	len = sizeof(n);
	if (FUNC13(fd, SOL_SOCKET, SO_RCVBUF, &n, &len) == -1) {
		FUNC15("Could not read SO_RCVBUF");
		FUNC12(EXIT_FAILURE);
	}
	if (n < (mru * 10)) {
		n = mru * 10;
		if (FUNC18(fd, SOL_SOCKET, SO_RCVBUF, &n, sizeof(n)) == -1)
			FUNC16("Could not increase SO_RCVBUF (from %d)", n);
	}

	len = sizeof(mtu);
	if (FUNC13(fd, SOL_L2CAP, SO_L2CAP_OMTU, &mtu, &len) == -1) {
		FUNC15("Could not get L2CAP OMTU: %m");
		FUNC12(EXIT_FAILURE);
	}
	if (mtu < BNEP_MTU_MIN) {
		FUNC15("L2CAP OMTU too small (%d)", mtu);
		FUNC12(EXIT_FAILURE);
	}

	len = sizeof(n);
	if (FUNC13(fd, SOL_SOCKET, SO_SNDBUF, &n, &len) == -1) {
		FUNC15("Could not get socket send buffer size: %m");
		FUNC10(fd);
		return;
	}
	if (n < (mtu * 2)) {
		n = mtu * 2;
		if (FUNC18(fd, SOL_SOCKET, SO_SNDBUF, &n, sizeof(n)) == -1) {
			FUNC15("Could not set socket send buffer size (%d): %m", n);
			FUNC10(fd);
			return;
		}
	}
	n = mtu;
	if (FUNC18(fd, SOL_SOCKET, SO_SNDLOWAT, &n, sizeof(n)) == -1) {
		FUNC15("Could not set socket low water mark (%d): %m", n);
		FUNC10(fd);
		return;
	}

	chan = FUNC6();
	if (chan == NULL)
		FUNC12(EXIT_FAILURE);

	chan->send = bnep_send;
	chan->recv = bnep_recv;
	chan->mru = mru;
	chan->mtu = mtu;
	FUNC0(chan->raddr, &remote_bdaddr);
	FUNC0(chan->laddr, &local_bdaddr);
	chan->state = CHANNEL_WAIT_CONNECT_RSP;
	FUNC8(chan, 10);
	if (!FUNC7(chan, fd))
		FUNC12(EXIT_FAILURE);

	FUNC4(chan, BNEP_SETUP_CONNECTION_REQUEST,
	    2, service_class, SDP_SERVICE_CLASS_PANU);
}