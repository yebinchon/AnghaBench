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
typedef  int /*<<< orphan*/  dummyif ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCSRTRFLUSH_IN6 ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC5()
{
	char dummyif[IFNAMSIZ+8];
	int sock;

	if ((sock = FUNC3(AF_INET6, SOCK_DGRAM, 0)) < 0)
		FUNC1(1, "socket");
	FUNC4(dummyif, "lo0", sizeof(dummyif)); /* dummy */
	if (FUNC2(sock, SIOCSRTRFLUSH_IN6, (caddr_t)&dummyif) < 0)
		FUNC1(1, "ioctl(SIOCSRTRFLUSH_IN6)");

	FUNC0(sock);
}