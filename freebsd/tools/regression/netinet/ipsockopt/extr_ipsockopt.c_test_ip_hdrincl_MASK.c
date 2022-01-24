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
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  flag ;

/* Variables and functions */
 scalar_t__ ENOPROTOOPT ; 
 int HISTORICAL_INP_HDRINCL ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IP_HDRINCL ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,...) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static void
FUNC9(void)
{
	int flag[2], sock;
	socklen_t len;

	/*
	 * Try to receive or set the IP_HDRINCL flag on a TCP socket.
	 */
	sock = FUNC6(PF_INET, SOCK_STREAM, 0);
	if (sock == -1)
		FUNC1(-1, "test_ip_hdrincl(): socket(SOCK_STREAM)");

	flag[0] = -1;
	len = sizeof(flag[0]);
	if (FUNC4(sock, IPPROTO_IP, IP_HDRINCL, flag, &len) == 0)
		FUNC1(-1, "test_ip_hdrincl(): initial getsockopt(IP_HDRINCL)");

	if (errno != ENOPROTOOPT)
		FUNC2(-1, "test_ip_hdrincl(): initial getsockopt(IP_HDRINC) "
		    "returned %d (%s) not ENOPROTOOPT", errno,
		    FUNC7(errno));

	flag[0] = 1;
	if (FUNC5(sock, IPPROTO_IP, IP_HDRINCL, flag, sizeof(flag[0]))
	    == 0)
		FUNC1(-1,"test_ip_hdrincl(): setsockopt(IP_HDRINCL) on TCP "
		    "succeeded\n");

	if (errno != ENOPROTOOPT)
		FUNC2(-1, "test_ip_hdrincl(): setsockopt(IP_HDRINCL) on TCP "
		    "returned %d (%s) not ENOPROTOOPT\n", errno,
		    FUNC7(errno));

	FUNC0(sock);

	/*
	 * Try to receive or set the IP_HDRINCL flag on a UDP socket.
	 */
	sock = FUNC6(PF_INET, SOCK_DGRAM, 0);
	if (sock == -1)
		FUNC1(-1, "test_ip_hdrincl(): socket(SOCK_DGRAM");

	flag[0] = -1;
	len = sizeof(flag[0]);
	if (FUNC4(sock, IPPROTO_IP, IP_HDRINCL, flag, &len) == 0)
		FUNC1(-1, "test_ip_hdrincl(): getsockopt(IP_HDRINCL) on UDP "
		    "succeeded\n");

	if (errno != ENOPROTOOPT)
		FUNC2(-1, "test_ip_hdrincl(): getsockopt(IP_HDRINCL) on UDP "
		    "returned %d (%s) not ENOPROTOOPT\n", errno,
		    FUNC7(errno));

	if (FUNC5(sock, IPPROTO_IP, IP_HDRINCL, flag, sizeof(flag[0]))
	    == 0)
		FUNC1(-1, "test_ip_hdrincl(): setsockopt(IP_HDRINCL) on UDP "
		    "succeeded\n");

	if (errno != ENOPROTOOPT)
		FUNC2(-1, "test_ip_hdrincl(): setsockopt(IP_HDRINCL) on UDP "
		    "returned %d (%s) not ENOPROTOOPT\n", errno,
		    FUNC7(errno));

	FUNC0(sock);

	/*
	 * Now try on a raw socket.  Access ontrol should prevent non-root
	 * users from creating the raw socket, so check that here based on
	 * geteuid().  If we're non-root, we just return assuming the socket
	 * create fails since the remainder of the tests apply only on a raw
	 * socket.
	 */
	sock = FUNC6(PF_INET, SOCK_RAW, 0);
	if (FUNC3() != 0) {
		if (sock != -1)
			FUNC2(-1, "test_ip_hdrincl: created raw socket as "
			    "uid %d", FUNC3());
		return;
	}
	if (sock == -1)
		FUNC1(-1, "test_ip_hdrincl(): socket(PF_INET, SOCK_RAW)");

	/*
	 * Make sure the initial value of the flag is 0 (disabled).
	 */
	flag[0] = -1;
	flag[1] = -1;
	len = sizeof(flag);
	if (FUNC4(sock, IPPROTO_IP, IP_HDRINCL, flag, &len) < 0)
		FUNC1(-1, "test_ip_hdrincl(): getsockopt(IP_HDRINCL) on raw "
		    "socket");

	if (len != sizeof(flag[0]))
		FUNC2(-1, "test_ip_hdrincl(): %d bytes returned on "
		    "initial get\n", len);

	if (flag[0] != 0)
		FUNC2(-1, "test_ip_hdrincl(): initial flag value of %d\n",
		    flag[0]);

	/*
	 * Enable the IP_HDRINCL flag.
	 */
	flag[0] = 1;
	if (FUNC5(sock, IPPROTO_IP, IP_HDRINCL, flag, sizeof(flag[0]))
	    < 0)
		FUNC1(-1, "test_ip_hdrincl(): setsockopt(IP_HDRINCL, 1)");

	/*
	 * Check that the IP_HDRINCL flag was set.
	 */
	flag[0] = -1;
	flag[1] = -1;
	len = sizeof(flag);
	if (FUNC4(sock, IPPROTO_IP, IP_HDRINCL, flag, &len) < 0)
		FUNC1(-1, "test_ip_hdrincl(): getsockopt(IP_HDRINCL) after "
		    "set");

	if (flag[0] == 0)
		FUNC2(-1, "test_ip_hdrincl(): getsockopt(IP_HDRINCL) "
		    "after set had flag of %d\n", flag[0]);

#define	HISTORICAL_INP_HDRINCL	8
	if (flag[0] != HISTORICAL_INP_HDRINCL)
		FUNC8("test_ip_hdrincl(): WARNING: getsockopt(IP_H"
		    "DRINCL) after set had non-historical value of %d\n",
		    flag[0]);

	/*
	 * Reset the IP_HDRINCL flag to 0.
	 */
	flag[0] = 0;
	if (FUNC5(sock, IPPROTO_IP, IP_HDRINCL, flag, sizeof(flag[0]))
	    < 0)
		FUNC1(-1, "test_ip_hdrincl(): setsockopt(IP_HDRINCL, 0)");

	/*
	 * Check that the IP_HDRINCL flag was reset to 0.
	 */
	flag[0] = -1;
	flag[1] = -1;
	len = sizeof(flag);
	if (FUNC4(sock, IPPROTO_IP, IP_HDRINCL, flag, &len) < 0)
		FUNC1(-1, "test_ip_hdrincl(): getsockopt(IP_HDRINCL) after "
		    "reset");

	if (flag[0] != 0)
		FUNC2(-1, "test_ip_hdrincl(): getsockopt(IP_HDRINCL) "
		    "after set had flag of %d\n", flag[0]);

	FUNC0(sock);
}