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
struct ifreq {int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;

/* Variables and functions */
 char* DISC_IFNAME ; 
 int /*<<< orphan*/  DISC_IFUNIT ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCIFDESTROY ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct ifreq ifr;
	int s;

	s = FUNC4(PF_INET, SOCK_RAW, 0);
	if (s < 0) {
		FUNC5("disc_done: socket(PF_INET, SOCK_RAW, 0)");
		return;
	}

	FUNC0(&ifr, sizeof(ifr));
	FUNC3(ifr.ifr_name, sizeof(ifr.ifr_name), "%s%d", DISC_IFNAME,
	    DISC_IFUNIT);

	if (FUNC2(s, SIOCIFDESTROY, &ifr) < 0)
		FUNC5("disc_done: ioctl(%s, SIOCIFDESTROY)", ifr.ifr_name);
	FUNC1(s);
}