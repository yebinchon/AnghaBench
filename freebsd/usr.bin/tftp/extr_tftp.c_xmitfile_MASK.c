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
typedef  int uint16_t ;
struct tftphdr {scalar_t__ th_opcode; int /*<<< orphan*/  th_stuff; } ;
struct tftp_stats {scalar_t__ amount; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct servent {int /*<<< orphan*/  s_port; } ;
typedef  int /*<<< orphan*/  serv ;

/* Variables and functions */
 int DEBUG_SIMPLE ; 
 int /*<<< orphan*/  EBADOP ; 
 scalar_t__ ERROR ; 
 int MAXPKTSIZE ; 
 scalar_t__ OACK ; 
 int RP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int debug ; 
 struct servent* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  options_rfc_enabled ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  peer_sock ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,struct tftp_stats*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int,char*,int,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct tftp_stats*) ; 
 int /*<<< orphan*/  FUNC14 (int,int*,struct tftp_stats*) ; 
 int /*<<< orphan*/  timeoutpacket ; 
 int txrx_error ; 
 int /*<<< orphan*/  verbose ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

void
FUNC16(int peer, char *port, int fd, char *name, char *mode)
{
	struct tftphdr *rp;
	int n, i;
	uint16_t block;
	struct sockaddr_storage serv;	/* valid server port number */
	char recvbuffer[MAXPKTSIZE];
	struct tftp_stats tftp_stats;

	FUNC13(&tftp_stats);

	FUNC4(&serv, 0, sizeof(serv));
	rp = (struct tftphdr *)recvbuffer;

	if (port == NULL) {
		struct servent *se;
		se = FUNC2("tftp", "udp");
		FUNC0(se != NULL);
		((struct sockaddr_in *)&peer_sock)->sin_port = se->s_port;
	} else
		((struct sockaddr_in *)&peer_sock)->sin_port =
		    FUNC3(FUNC1(port));

	for (i = 0; i < 12; i++) {
		struct sockaddr_storage from;

		/* Tell the other side what we want to do */
		if (debug&DEBUG_SIMPLE)
			FUNC6("Sending %s\n", name);

		n = FUNC12(peer, name, mode);
		if (n > 0) {
			FUNC6("Cannot send WRQ packet\n");
			return;
		}

		/*
		 * The first packet we receive has the new destination port
		 * we have to send the next packets to.
		 */
		n = FUNC10(peer, recvbuffer,
		    MAXPKTSIZE, &from, timeoutpacket);

		/* We got some data! */
		if (n >= 0) {
			((struct sockaddr_in *)&peer_sock)->sin_port =
			    ((struct sockaddr_in *)&from)->sin_port;
			break;
		}

		/* This should be retried */
		if (n == RP_TIMEOUT) {
			FUNC6("Try %d, didn't receive answer from remote.\n",
			    i + 1);
			continue;
		}

		/* Everything else is fatal */
		break;
	}
	if (i == 12) {
		FUNC6("Transfer timed out.\n");
		return;
	}
	if (rp->th_opcode == ERROR) {
		FUNC6("Got ERROR, aborted\n");
		return;
	}

	/*
	 * If the first packet is an OACK instead of an ACK packet,
	 * handle it different.
	 */
	if (rp->th_opcode == OACK) {
		if (!options_rfc_enabled) {
			FUNC6("Got OACK while options are not enabled!\n");
			FUNC11(peer, EBADOP);
			return;
		}

		FUNC5(peer, rp->th_stuff, n + 2);
	}

	if (FUNC9(fd, NULL, mode) < 0) {
		FUNC15("read_init()");
		return;
	}

	block = 1;
	FUNC14(peer, &block, &tftp_stats);

	FUNC8();
	if (tftp_stats.amount > 0)
		FUNC7("Sent", verbose, &tftp_stats);

	txrx_error = 1;
}