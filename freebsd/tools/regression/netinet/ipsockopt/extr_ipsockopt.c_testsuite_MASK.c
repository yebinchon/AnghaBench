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
typedef  int /*<<< orphan*/  socktypeset ;

/* Variables and functions */
 int /*<<< orphan*/  BOOLEAN_ANYONE ; 
 int /*<<< orphan*/  IP_FAITH ; 
 int /*<<< orphan*/  IP_MULTICAST_LOOP ; 
 int /*<<< orphan*/  IP_MULTICAST_TTL ; 
 int /*<<< orphan*/  IP_ONESBCAST ; 
 int /*<<< orphan*/  IP_RECVDSTADDR ; 
 int /*<<< orphan*/  IP_RECVIF ; 
 int /*<<< orphan*/  IP_RECVOPTS ; 
 int /*<<< orphan*/  IP_RECVRETOPTS ; 
 int /*<<< orphan*/  IP_RECVTTL ; 
 int /*<<< orphan*/  IP_TOS ; 
 int /*<<< orphan*/  IP_TTL ; 
 int SOCK_DGRAM ; 
 int SOCK_RAW ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,int) ; 
 int FUNC2 (int,int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char const*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,char const*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC11(int priv)
{
	const char *socktypenameset[] = {"SOCK_DGRAM", "SOCK_STREAM",
	    "SOCK_RAW"};
	int socktypeset[] = {SOCK_DGRAM, SOCK_STREAM, SOCK_RAW};
	const char *socktypename;
	int i, sock, socktype;

	FUNC6();

	for (i = 0; i < sizeof(socktypeset)/sizeof(int); i++) {
		socktype = socktypeset[i];
		socktypename = socktypenameset[i];

		/*
		 * If we can't acquire root privilege, we can't open raw
		 * sockets, so don't actually try.
		 */
		if (FUNC4() != 0 && socktype == SOCK_RAW)
			continue;
		if (FUNC3() != 0 && !priv && socktype == SOCK_RAW)
			continue;

		/*
		 * XXXRW: On 5.3, this seems not to work for SOCK_RAW.
		 */
		sock = FUNC2(socktype, priv);
		if (sock == -1)
			FUNC1(-1, "get_socket(%s, %d) for test_ip_uchar(IP_TOS)",
			    socktypename, priv);
		FUNC10(sock, socktypename, IP_TOS, "IP_TOS", 0);
		FUNC0(sock);

		sock = FUNC2(socktype, priv);
		if (sock == -1)
			FUNC1(-1, "get_socket(%s %d) for test_ip_uchar(IP_TTL)",
			    socktypename, priv);
		FUNC10(sock, socktypename, IP_TTL, "IP_TTL", 64);
		FUNC0(sock);

		sock = FUNC2(socktype, priv);
		if (sock == -1)
			FUNC1(-1, "get_socket(%s, %d) for test_ip_boolean"
			    "(IP_RECVOPTS)", socktypename, priv);
		FUNC5(sock, socktypename, IP_RECVOPTS,
		    "IP_RECVOPTS", 0, BOOLEAN_ANYONE);
		FUNC0(sock);

		sock = FUNC2(socktype, priv);
		if (sock == -1)
			FUNC1(-1, "get_socket(%s, %d) for test_ip_boolean"
			     "(IP_RECVRETOPTS)", socktypename, priv);
		FUNC5(sock, socktypename, IP_RECVRETOPTS,
		    "IP_RECVRETOPTS", 0, BOOLEAN_ANYONE);
		FUNC0(sock);

		sock = FUNC2(socktype, priv);
		if (sock == -1)
			FUNC1(-1, "get_socket(%s, %d) for test_ip_boolean"
			    "(IP_RECVDSTADDR)", socktypename, priv);
		FUNC5(sock, socktypename, IP_RECVDSTADDR,
		    "IP_RECVDSTADDR", 0, BOOLEAN_ANYONE);
		FUNC0(sock);

		sock = FUNC2(socktype, priv);
		if (sock == -1)
			FUNC1(-1, "get_socket(%s, %d) for test_ip_boolean"
			    "(IP_RECVTTL)", socktypename, priv);
		FUNC5(sock, socktypename, IP_RECVTTL, "IP_RECVTTL",
		    0, BOOLEAN_ANYONE);
		FUNC0(sock);

		sock = FUNC2(socktype, priv);
		if (sock == -1)
			FUNC1(-1, "get_socket(%s, %d) for test_ip_boolean"
			    "(IP_RECVIF)", socktypename, priv);
		FUNC5(sock, socktypename, IP_RECVIF, "IP_RECVIF",
		    0, BOOLEAN_ANYONE);
		FUNC0(sock);

		sock = FUNC2(socktype, priv);
		if (sock == -1)
			FUNC1(-1, "get_socket(%s, %d) for test_ip_boolean"
			    "(IP_FAITH)", socktypename, priv);
		FUNC5(sock, socktypename, IP_FAITH, "IP_FAITH", 0,
		    BOOLEAN_ANYONE);
		FUNC0(sock);

		sock = FUNC2(socktype, priv);
		if (sock == -1)
			FUNC1(-1, "get_socket(%s, %d) for test_ip_boolean"
			    "(IP_ONESBCAST)", socktypename, priv);
		FUNC5(sock, socktypename, IP_ONESBCAST,
		    "IP_ONESBCAST", 0, BOOLEAN_ANYONE);
		FUNC0(sock);

		/*
		 * Test the multicast TTL exactly as we would the regular
		 * TTL, only expect a different default.
		 */
		sock = FUNC2(socktype, priv);
		if (sock == -1)
			FUNC1(-1, "get_socket(%s, %d) for IP_MULTICAST_TTL",
			    socktypename, priv);
		FUNC10(sock, socktypename, IP_MULTICAST_TTL,
		    "IP_MULTICAST_TTL", 1);
		FUNC0(sock);

		/*
		 * The multicast loopback flag can be tested using our
		 * boolean tester, but only because the FreeBSD API is a bit
		 * more flexible than earlir APIs and will accept an int as
		 * well as a u_char.  Loopback is enabled by default.
		 */
		sock = FUNC2(socktype, priv);
		if (sock == -1)
			FUNC1(-1, "get_socket(%s, %d) for IP_MULTICAST_LOOP",
			    socktypename, priv);
		FUNC5(sock, socktypename, IP_MULTICAST_LOOP,
		    "IP_MULTICAST_LOOP", 1, BOOLEAN_ANYONE);
		FUNC0(sock);

		sock = FUNC2(socktype, priv);
		if (sock == -1)
			FUNC1(-1, "get_socket(%s, %d) for test_ip_options",
			    socktypename, priv);
		//test_ip_options(sock, socktypename);
		FUNC0(sock);

		sock = FUNC2(socktype, priv);
		if (sock == -1)
			FUNC1(-1, "get_socket(%s, %d) for test_ip_options",
			    socktypename, priv);
		FUNC8(sock, socktypename);
		FUNC0(sock);

		FUNC7(0, NULL);
		FUNC9(0, NULL);
		/*
		 * XXX: Still need to test:
		 * IP_PORTRANGE
		 * IP_IPSEC_POLICY?
		 */
	}
}