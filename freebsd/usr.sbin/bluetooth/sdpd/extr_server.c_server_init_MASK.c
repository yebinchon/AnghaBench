#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  un ;
struct TYPE_4__ {int valid; int server; int control; int /*<<< orphan*/ * rsp; scalar_t__ omtu; scalar_t__ rsp_limit; scalar_t__ rsp_size; scalar_t__ rsp_cs; scalar_t__ priv; } ;
typedef  TYPE_1__ uint8_t ;
typedef  scalar_t__ uint16_t ;
struct sockaddr_un {int sun_len; int l2cap_len; int maxfd; TYPE_1__* fdidx; int /*<<< orphan*/  fdset; TYPE_1__* req; scalar_t__ imtu; int /*<<< orphan*/  l2cap_psm; int /*<<< orphan*/  l2cap_bdaddr; int /*<<< orphan*/  l2cap_family; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr_l2cap {int sun_len; int l2cap_len; int maxfd; TYPE_1__* fdidx; int /*<<< orphan*/  fdset; TYPE_1__* req; scalar_t__ imtu; int /*<<< orphan*/  l2cap_psm; int /*<<< orphan*/  l2cap_bdaddr; int /*<<< orphan*/  l2cap_family; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  struct sockaddr_un* server_p ;
typedef  int /*<<< orphan*/  l2 ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  imtu ;
typedef  TYPE_1__* fd_idx_p ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  BLUETOOTH_PROTO_L2CAP ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NG_HCI_BDADDR_ANY ; 
 int /*<<< orphan*/  NG_L2CAP_PSM_SDP ; 
 int /*<<< orphan*/  PF_BLUETOOTH ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 scalar_t__ SDP_LOCAL_MTU ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_L2CAP ; 
 int /*<<< orphan*/  SO_L2CAP_IMTU ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC18 (char const*) ; 

int32_t
FUNC19(server_p srv, char const *control)
{
	struct sockaddr_un	un;
	struct sockaddr_l2cap	l2;
	int32_t			unsock, l2sock;
	socklen_t		size;
	uint16_t		imtu;

	FUNC2(srv != NULL);
	FUNC2(control != NULL);

	FUNC13(srv, 0, sizeof(*srv));

	/* Open control socket */
	if (FUNC18(control) < 0 && errno != ENOENT) {
		FUNC11("Could not unlink(%s). %s (%d)",
			control, FUNC16(errno), errno);
		return (-1);
	}

	unsock = FUNC15(PF_LOCAL, SOCK_STREAM, 0);
	if (unsock < 0) {
		FUNC11("Could not create control socket. %s (%d)",
			FUNC16(errno), errno);
		return (-1);
	}

	FUNC13(&un, 0, sizeof(un));
	un.sun_len = sizeof(un);
	un.sun_family = AF_LOCAL;
	FUNC17(un.sun_path, control, sizeof(un.sun_path));

	if (FUNC3(unsock, (struct sockaddr *) &un, sizeof(un)) < 0) {
		FUNC11("Could not bind control socket. %s (%d)",
			FUNC16(errno), errno);
		FUNC6(unsock);
		return (-1);
	}

	if (FUNC5(control, S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH) < 0) {
		FUNC11("Could not change permissions on control socket. " \
			"%s (%d)", FUNC16(errno), errno);
		FUNC6(unsock);
		return (-1);
	}

	if (FUNC10(unsock, 10) < 0) {
		FUNC11("Could not listen on control socket. %s (%d)",
			FUNC16(errno), errno);
		FUNC6(unsock);
		return (-1);
	}

	/* Open L2CAP socket */
	l2sock = FUNC15(PF_BLUETOOTH, SOCK_SEQPACKET, BLUETOOTH_PROTO_L2CAP);
	if (l2sock < 0) {
		FUNC11("Could not create L2CAP socket. %s (%d)",
			FUNC16(errno), errno);
		FUNC6(unsock);
		return (-1);
	}

	size = sizeof(imtu);
        if (FUNC8(l2sock, SOL_L2CAP, SO_L2CAP_IMTU, &imtu, &size) < 0) {
		FUNC11("Could not get L2CAP IMTU. %s (%d)",
			FUNC16(errno), errno);
		FUNC6(unsock);
		FUNC6(l2sock);
		return (-1);
        }

	FUNC13(&l2, 0, sizeof(l2));
	l2.l2cap_len = sizeof(l2);
	l2.l2cap_family = AF_BLUETOOTH;
	FUNC12(&l2.l2cap_bdaddr, NG_HCI_BDADDR_ANY, sizeof(l2.l2cap_bdaddr));
	l2.l2cap_psm = FUNC9(NG_L2CAP_PSM_SDP);

	if (FUNC3(l2sock, (struct sockaddr *) &l2, sizeof(l2)) < 0) {
		FUNC11("Could not bind L2CAP socket. %s (%d)",
			FUNC16(errno), errno);
		FUNC6(unsock);
		FUNC6(l2sock);
		return (-1);
	}

	if (FUNC10(l2sock, 10) < 0) {
		FUNC11("Could not listen on L2CAP socket. %s (%d)",
			FUNC16(errno), errno);
		FUNC6(unsock);
		FUNC6(l2sock);
		return (-1);
	}

	/* Allocate incoming buffer */
	srv->imtu = (imtu > SDP_LOCAL_MTU)? imtu : SDP_LOCAL_MTU;
	srv->req = (uint8_t *) FUNC4(srv->imtu, sizeof(srv->req[0]));
	if (srv->req == NULL) {
		FUNC11("Could not allocate request buffer");
		FUNC6(unsock);
		FUNC6(l2sock);
		return (-1);
	}

	/* Allocate memory for descriptor index */
	srv->fdidx = (fd_idx_p) FUNC4(FD_SETSIZE, sizeof(srv->fdidx[0]));
	if (srv->fdidx == NULL) {
		FUNC11("Could not allocate fd index");
		FUNC7(srv->req);
		FUNC6(unsock);
		FUNC6(l2sock);
		return (-1);
	}

	/* Register Service Discovery profile (attach it to control socket) */
	if (FUNC14(unsock) < 0) {
		FUNC11("Could not register Service Discovery profile");
		FUNC7(srv->fdidx);
		FUNC7(srv->req);
		FUNC6(unsock);
		FUNC6(l2sock);
		return (-1);
	}

	/*
	 * If we got here then everything is fine. Add both control sockets
	 * to the index.
	 */

	FUNC1(&srv->fdset);
	srv->maxfd = (unsock > l2sock)? unsock : l2sock;
	
	FUNC0(unsock, &srv->fdset);
	srv->fdidx[unsock].valid = 1;
	srv->fdidx[unsock].server = 1;
	srv->fdidx[unsock].control = 1;
	srv->fdidx[unsock].priv = 0;
	srv->fdidx[unsock].rsp_cs = 0;
	srv->fdidx[unsock].rsp_size = 0;
	srv->fdidx[unsock].rsp_limit = 0;
	srv->fdidx[unsock].omtu = SDP_LOCAL_MTU;
	srv->fdidx[unsock].rsp = NULL;

	FUNC0(l2sock, &srv->fdset);
	srv->fdidx[l2sock].valid = 1;
	srv->fdidx[l2sock].server = 1;
	srv->fdidx[l2sock].control = 0;
	srv->fdidx[l2sock].priv = 0;
	srv->fdidx[l2sock].rsp_cs = 0;
	srv->fdidx[l2sock].rsp_size = 0;
	srv->fdidx[l2sock].rsp_limit = 0;
	srv->fdidx[l2sock].omtu = 0; /* unknown */
	srv->fdidx[l2sock].rsp = NULL;

	return (0);
}