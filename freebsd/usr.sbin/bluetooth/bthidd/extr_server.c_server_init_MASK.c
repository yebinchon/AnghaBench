#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_l2cap {int l2cap_len; void* l2cap_psm; scalar_t__ l2cap_cid; int /*<<< orphan*/  l2cap_bdaddr_type; int /*<<< orphan*/  l2cap_bdaddr; int /*<<< orphan*/  l2cap_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  l2addr ;
typedef  int int32_t ;
typedef  TYPE_1__* bthid_server_p ;
struct TYPE_3__ {int ctrl; int intr; int cons; int /*<<< orphan*/  maxfd; int /*<<< orphan*/  rfdset; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  sessions; int /*<<< orphan*/  wfdset; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int /*<<< orphan*/  BDADDR_BREDR ; 
 int /*<<< orphan*/  BLUETOOTH_PROTO_L2CAP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PF_BLUETOOTH ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  errno ; 
 void* FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int32_t
FUNC14(bthid_server_p srv)
{
	struct sockaddr_l2cap	l2addr;

	FUNC3(srv != NULL);

	srv->ctrl = srv->intr = -1;
	FUNC1(&srv->rfdset);
	FUNC1(&srv->wfdset);
	FUNC2(&srv->sessions);

	/* Open /dev/consolectl */
	srv->cons = FUNC10("/dev/consolectl", O_RDWR);
	if (srv->cons < 0) {
		FUNC13(LOG_ERR, "Could not open /dev/consolectl. %s (%d)",
			FUNC12(errno), errno);
		return (-1);
	}

	/* Create control socket */
	srv->ctrl = FUNC11(PF_BLUETOOTH, SOCK_SEQPACKET, BLUETOOTH_PROTO_L2CAP);
	if (srv->ctrl < 0) {
		FUNC13(LOG_ERR, "Could not create control L2CAP socket. " \
			"%s (%d)", FUNC12(errno), errno);
		FUNC5(srv->cons);
		return (-1);
	}

	l2addr.l2cap_len = sizeof(l2addr);
	l2addr.l2cap_family = AF_BLUETOOTH;
	FUNC9(&l2addr.l2cap_bdaddr, &srv->bdaddr, sizeof(l2addr.l2cap_bdaddr));
	l2addr.l2cap_psm = FUNC6(0x11);
	l2addr.l2cap_bdaddr_type = BDADDR_BREDR;
	l2addr.l2cap_cid = 0;
	
	if (FUNC4(srv->ctrl, (struct sockaddr *) &l2addr, sizeof(l2addr)) < 0) {
		FUNC13(LOG_ERR, "Could not bind control L2CAP socket. " \
			"%s (%d)", FUNC12(errno), errno);
		FUNC5(srv->ctrl);
		FUNC5(srv->cons);
		return (-1);
	}

	if (FUNC7(srv->ctrl, 10) < 0) {
		FUNC13(LOG_ERR, "Could not listen on control L2CAP socket. " \
			"%s (%d)", FUNC12(errno), errno);
		FUNC5(srv->ctrl);
		FUNC5(srv->cons);
		return (-1);
	}

	/* Create intrrupt socket */
	srv->intr = FUNC11(PF_BLUETOOTH, SOCK_SEQPACKET, BLUETOOTH_PROTO_L2CAP);
	if (srv->intr < 0) {
		FUNC13(LOG_ERR, "Could not create interrupt L2CAP socket. " \
			"%s (%d)", FUNC12(errno), errno);
		FUNC5(srv->ctrl);
		FUNC5(srv->cons);
		return (-1);
	}

	l2addr.l2cap_psm = FUNC6(0x13);

	if (FUNC4(srv->intr, (struct sockaddr *) &l2addr, sizeof(l2addr)) < 0) {
		FUNC13(LOG_ERR, "Could not bind interrupt L2CAP socket. " \
			"%s (%d)", FUNC12(errno), errno);
		FUNC5(srv->intr);
		FUNC5(srv->ctrl);
		FUNC5(srv->cons);
		return (-1);
	}

	if (FUNC7(srv->intr, 10) < 0) {
		FUNC13(LOG_ERR, "Could not listen on interrupt L2CAP socket. "\
			"%s (%d)", FUNC12(errno), errno);
		FUNC5(srv->intr);
		FUNC5(srv->ctrl);
		FUNC5(srv->cons);
		return (-1);
	}

	FUNC0(srv->ctrl, &srv->rfdset);
	FUNC0(srv->intr, &srv->rfdset);
	srv->maxfd = FUNC8(srv->ctrl, srv->intr);

	return (0);
}