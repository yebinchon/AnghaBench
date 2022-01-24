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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  NG_L2CAP_MAX_ECHO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr, "Usage: l2ping [-fhn] -a remote " \
		"[-c count] [-i wait] [-S source] [-s size]\n");
	FUNC1(stderr, "Where:\n");
	FUNC1(stderr, "  -a remote  Specify remote device to ping\n");
	FUNC1(stderr, "  -c count   Number of packets to send\n");
	FUNC1(stderr, "  -f         No delay between packets\n");
	FUNC1(stderr, "  -h         Display this message\n");
	FUNC1(stderr, "  -i wait    Delay between packets (sec)\n");
	FUNC1(stderr, "  -n         Numeric output only\n");
	FUNC1(stderr, "  -S source  Specify source device\n");
	FUNC1(stderr, "  -s size    Packet size (bytes), " \
		"between %zd and %d\n", sizeof(int32_t), NG_L2CAP_MAX_ECHO_SIZE);
	
	FUNC0(255);
}