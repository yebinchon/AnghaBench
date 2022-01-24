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
struct sockaddr_l2cap {int l2cap_len; scalar_t__ l2cap_psm; int /*<<< orphan*/  l2cap_bdaddr; scalar_t__ l2cap_cid; int /*<<< orphan*/  l2cap_bdaddr_type; int /*<<< orphan*/  l2cap_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  l2addr ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  bdaddr_p ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int /*<<< orphan*/  BDADDR_BREDR ; 
 int /*<<< orphan*/  BLUETOOTH_PROTO_L2CAP ; 
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 scalar_t__ O_NONBLOCK ; 
 int /*<<< orphan*/  PF_BLUETOOTH ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 scalar_t__ FUNC0 (scalar_t__,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(bdaddr_p bdaddr, uint16_t psm)
{
	struct sockaddr_l2cap	l2addr;
	int32_t			s, m;

	s = FUNC7(PF_BLUETOOTH, SOCK_SEQPACKET, BLUETOOTH_PROTO_L2CAP);
	if (s < 0)
		return (-1);

	m = FUNC3(s, F_GETFL);
	if (m < 0) {
		FUNC1(s);
		return (-1);
	}

	if (FUNC3(s, F_SETFL, (m|O_NONBLOCK)) < 0) {
		FUNC1(s);
		return (-1);
	}

	l2addr.l2cap_len = sizeof(l2addr);
	l2addr.l2cap_family = AF_BLUETOOTH;
	FUNC6(&l2addr.l2cap_bdaddr, 0, sizeof(l2addr.l2cap_bdaddr));
	l2addr.l2cap_psm = 0;
	l2addr.l2cap_bdaddr_type = BDADDR_BREDR;
	l2addr.l2cap_cid = 0;
	
	if (FUNC0(s, (struct sockaddr *) &l2addr, sizeof(l2addr)) < 0) {
		FUNC1(s);
		return (-1);
	}

	FUNC5(&l2addr.l2cap_bdaddr, bdaddr, sizeof(l2addr.l2cap_bdaddr));
	l2addr.l2cap_psm = FUNC4(psm);

	if (FUNC2(s, (struct sockaddr *) &l2addr, sizeof(l2addr)) < 0 &&
	    errno != EINPROGRESS) {
		FUNC1(s);
		return (-1);
	}

	return (s);
}