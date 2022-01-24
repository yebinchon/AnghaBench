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
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(int argc, char *argv[])
{
	int raw_sock, tcp_sock, udp_sock;

	if (FUNC3() != 0)
		FUNC2(-1, "FAIL: root privilege required");

	raw_sock = FUNC4(PF_INET, SOCK_RAW, 0);
	if (raw_sock == -1)
		FUNC1(-1, "FAIL: socket(PF_INET, SOCK_RAW)");

	tcp_sock = FUNC4(PF_INET, SOCK_STREAM, 0);
	if (raw_sock == -1)
		FUNC1(-1, "FAIL: socket(PF_INET, SOCK_STREAM)");

	udp_sock = FUNC4(PF_INET, SOCK_DGRAM, 0);
	if (raw_sock == -1)
		FUNC1(-1, "FAIL: socket(PF_INET, SOCK_DGRAM)");

	FUNC8(raw_sock, tcp_sock, udp_sock);
	FUNC7(raw_sock, tcp_sock, udp_sock);
	FUNC6(raw_sock, tcp_sock, udp_sock);
	FUNC5(raw_sock, tcp_sock, udp_sock);

	FUNC0(udp_sock);
	FUNC0(tcp_sock);
	FUNC0(raw_sock);

	FUNC9();

	return (0);
}