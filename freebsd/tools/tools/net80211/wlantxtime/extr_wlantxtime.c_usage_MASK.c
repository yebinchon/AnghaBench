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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(const char *progname)
{
	FUNC1(stderr, "usage: %s [-a] [-l framelen] [-m mode] [-r rate] [-s]\n",
	    progname);
	FUNC1(stderr, "-a             display calculations for all possible rates\n");
	FUNC1(stderr, "-l framelen    length in bytes of 802.11 payload (default 1536)\n");
	FUNC1(stderr, "-m 11a         calculate for 11a channel\n");
	FUNC1(stderr, "-m 11b         calculate for 11b channel\n");
	FUNC1(stderr, "-m 11g         calculate for 11g channel (default)\n");
	FUNC1(stderr, "-m half        calculate for 1/2 width channel\n");
	FUNC1(stderr, "-m quarter     calculate for 1/4 width channel\n");
	FUNC1(stderr, "-m 108g        calculate for dynamic turbo 11g channel\n");
	FUNC1(stderr, "-m sturbo      calculate for static turbo channel\n");
	FUNC1(stderr, "-m turbo       calculate for dynamic turbo 11a channel\n");
	FUNC1(stderr, "-r rate        IEEE rate code (default 54)\n");
	FUNC1(stderr, "-s             short preamble (default long)\n");
	FUNC0(0);
}