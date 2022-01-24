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
struct tftphdr {scalar_t__ th_opcode; int /*<<< orphan*/  th_stuff; int /*<<< orphan*/  th_msg; int /*<<< orphan*/  th_code; } ;
struct tftp_stats {scalar_t__ amount; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct servent {int /*<<< orphan*/  s_port; } ;

/* Variables and functions */
 int DEBUG_SIMPLE ; 
 int /*<<< orphan*/  EBADOP ; 
 scalar_t__ ERROR ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int MAXPKTSIZE ; 
 scalar_t__ OACK ; 
 int RP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int debug ; 
 struct servent* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  options_rfc_enabled ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  peer_sock ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,struct tftp_stats*) ; 
 int FUNC7 (int,char*,int,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct tftp_stats*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int*,struct tftp_stats*,struct tftphdr*,int) ; 
 int /*<<< orphan*/  timeoutpacket ; 
 int /*<<< orphan*/  verbose ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ *,char*) ; 

void
FUNC16(int peer, char *port, int fd, char *name, char *mode)
{
	struct tftphdr *rp;
	uint16_t block;
	char recvbuffer[MAXPKTSIZE];
	int n, i;
	struct tftp_stats tftp_stats;

	FUNC11(&tftp_stats);

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
			FUNC5("Requesting %s\n", name);

		n = FUNC10(peer, name, mode);
		if (n > 0) {
			FUNC5("Cannot send RRQ packet\n");
			return;
		}

		/*
		 * The first packet we receive has the new destination port
		 * we have to send the next packets to.
		 */
		n = FUNC7(peer, recvbuffer,
		    MAXPKTSIZE, &from, timeoutpacket);

		/* We got something useful! */
		if (n >= 0) {
			((struct sockaddr_in *)&peer_sock)->sin_port =
			    ((struct sockaddr_in *)&from)->sin_port;
			break;
		}

		/* We should retry if this happens */
		if (n == RP_TIMEOUT) {
			FUNC5("Try %d, didn't receive answer from remote.\n",
			    i + 1);
			continue;
		}

		/* Otherwise it is a fatal error */
		break;
	}
	if (i == 12) {
		FUNC5("Transfer timed out.\n");
		return;
	}
	if (rp->th_opcode == ERROR) {
		FUNC12(LOG_ERR, "Error code %d: %s", rp->th_code, rp->th_msg);
		return;
	}

	if (FUNC15(fd, NULL, mode) < 0) {
		FUNC14("write_init");
		return;
	}

	/*
	 * If the first packet is an OACK packet instead of an DATA packet,
	 * handle it different.
	 */
	if (rp->th_opcode == OACK) {
		if (!options_rfc_enabled) {
			FUNC5("Got OACK while options are not enabled!\n");
			FUNC9(peer, EBADOP);
			return;
		}

		FUNC4(peer, rp->th_stuff, n + 2);

		n = FUNC8(peer, 0);
		if (n > 0) {
			FUNC5("Cannot send ACK on OACK.\n");
			return;
		}
		block = 0;
		FUNC13(peer, &block, &tftp_stats, NULL, 0);
	} else {
		block = 1;
		FUNC13(peer, &block, &tftp_stats, rp, n);
	}

	if (tftp_stats.amount > 0)
		FUNC6("Received", verbose, &tftp_stats);
	return;
}