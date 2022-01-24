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
typedef  int /*<<< orphan*/  uint16_t ;
struct sockaddr_l2cap {int l2cap_len; int /*<<< orphan*/  l2cap_bdaddr; scalar_t__ l2cap_cid; int /*<<< orphan*/  l2cap_bdaddr_type; int /*<<< orphan*/  l2cap_psm; int /*<<< orphan*/  l2cap_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  mru ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int /*<<< orphan*/  BDADDR_BREDR ; 
 int /*<<< orphan*/  BLUETOOTH_PROTO_L2CAP ; 
 int /*<<< orphan*/  BNEP_MTU_MIN ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  PF_BLUETOOTH ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 int /*<<< orphan*/  SOL_L2CAP ; 
 int /*<<< orphan*/  SO_L2CAP_IMTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2cap_psm ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  local_bdaddr ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_l2cap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  server_ev ; 
 int server_fd ; 
 int /*<<< orphan*/  server_read ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(void)
{
	struct sockaddr_l2cap sa;
	uint16_t mru;

	server_fd = FUNC11(PF_BLUETOOTH, SOCK_SEQPACKET, BLUETOOTH_PROTO_L2CAP);
	if (server_fd == -1) {
		FUNC7("Could not open L2CAP socket: %m");
		FUNC4(EXIT_FAILURE);
	}

	FUNC9(&sa, 0, sizeof(sa));
	sa.l2cap_family = AF_BLUETOOTH;
	sa.l2cap_len = sizeof(sa);
	sa.l2cap_psm = FUNC5(l2cap_psm);
	sa.l2cap_bdaddr_type = BDADDR_BREDR;
	sa.l2cap_cid = 0;
	
	FUNC0(&sa.l2cap_bdaddr, &local_bdaddr);
	if (FUNC1(server_fd, (struct sockaddr *)&sa, sizeof(sa)) == -1) {
		FUNC7("Could not bind server socket: %m");
		FUNC4(EXIT_FAILURE);
	}

	mru = BNEP_MTU_MIN;
	if (FUNC10(server_fd, SOL_L2CAP,
	    SO_L2CAP_IMTU, &mru, sizeof(mru)) == -1) {
		FUNC7("Could not set L2CAP IMTU (%d): %m", mru);
		FUNC4(EXIT_FAILURE);
	}

	if (FUNC6(server_fd, 0) == -1) {
		FUNC7("Could not listen on server socket: %m");
		FUNC4(EXIT_FAILURE);
	}

	FUNC3(&server_ev, server_fd, EV_READ | EV_PERSIST, server_read, NULL);
	if (FUNC2(&server_ev, NULL) == -1) {
		FUNC7("Could not add server event: %m");
		FUNC4(EXIT_FAILURE);
	}

	FUNC8("server socket open");
}