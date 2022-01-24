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

/* Variables and functions */
 int DEFAULT_PAYLOAD_SIZE ; 
 int DEFAULT_PORT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int IPPROTO_ZEROHOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{

	FUNC1(stderr, "IPv4 broadcast test program. Sends a %d byte UDP "
	        "datagram to <dest>:<port>.\n\n", DEFAULT_PAYLOAD_SIZE);
	FUNC1(stderr,
"usage: %s [-1] [-A laddr] [-b] [-B] [-d] [-i iface] [-l len]\n"
"                   [-p port] [-R] [-s srcaddr] [-t ttl] <dest>\n",
	    progname);
	FUNC1(stderr, "-1: Set IP_ONESBCAST\n");
	FUNC1(stderr, "-A: specify laddr (default: INADDR_ANY)\n");
	FUNC1(stderr, "-b: bind socket to <laddr>:<lport>\n");
	FUNC1(stderr, "-B: Set SO_BROADCAST\n");
	FUNC1(stderr, "-d: Set SO_DONTROUTE\n");
	FUNC1(stderr, "-i: Set IP_SENDIF <iface> (if supported)\n");
	FUNC1(stderr, "-l: Set payload size to <len>\n");
	FUNC1(stderr, "-p: Set local and remote port (default: %d)\n",
	    DEFAULT_PORT);
	FUNC1(stderr, "-R: Use raw IP (protocol %d)\n", IPPROTO_ZEROHOP);
#if 0
	fprintf(stderr, "-r: Fill datagram with random bytes\n");
#endif
	FUNC1(stderr, "-s: Set IP_SENDSRCADDR to <srcaddr>\n");
	FUNC1(stderr, "-t: Set IP_TTL to <ttl>\n");

	FUNC0(EXIT_FAILURE);
}