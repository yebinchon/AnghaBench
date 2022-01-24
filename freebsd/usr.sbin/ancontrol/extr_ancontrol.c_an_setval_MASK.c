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
struct ifreq {scalar_t__ ifr_data; int /*<<< orphan*/  ifr_name; } ;
struct an_req {int dummy; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SIOCSAIRONET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC6(const char *iface, struct an_req *areq)
{
	struct ifreq		ifr;
	int			s;

	FUNC0(&ifr, sizeof(ifr));

	FUNC5(ifr.ifr_name, iface, sizeof(ifr.ifr_name));
	ifr.ifr_data = (caddr_t)areq;

	s = FUNC4(AF_INET, SOCK_DGRAM, 0);

	if (s == -1)
		FUNC2(1, "socket");

	if (FUNC3(s, SIOCSAIRONET, &ifr) == -1)
		FUNC2(1, "SIOCSAIRONET");

	FUNC1(s);

	return;
}