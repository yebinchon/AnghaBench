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
 int /*<<< orphan*/  IP_MULTICAST_LOOP ; 
 int /*<<< orphan*/  WARN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(int raw_sock, int tcp_sock, int udp_sock)
{

	FUNC0(IP_MULTICAST_LOOP, "IP_MULTICAST_LOOP", 1, 0, 243,
	    "raw_sock", raw_sock, 0);
	FUNC0(IP_MULTICAST_LOOP, "IP_MULTICAST_LOOP", 1, 0, 243,
	    "tcp_sock", tcp_sock, WARN_SUCCESS);
	FUNC0(IP_MULTICAST_LOOP, "IP_MULTICAST_LOOP", 1, 0, 243,
	    "udp_sock", udp_sock, 0);
}