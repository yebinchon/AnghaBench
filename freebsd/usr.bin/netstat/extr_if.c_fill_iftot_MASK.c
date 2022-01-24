#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iftot {int /*<<< orphan*/  ift_co; int /*<<< orphan*/  ift_ob; int /*<<< orphan*/  ift_od; int /*<<< orphan*/  ift_oe; int /*<<< orphan*/  ift_op; int /*<<< orphan*/  ift_ib; int /*<<< orphan*/  ift_id; int /*<<< orphan*/  ift_ie; int /*<<< orphan*/  ift_ip; } ;
struct ifaddrs {int /*<<< orphan*/  ifa_name; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_LINK ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_OSERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iftot*,int) ; 
 int /*<<< orphan*/  collisions ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddrs*) ; 
 scalar_t__ FUNC3 (struct ifaddrs**) ; 
 int /*<<< orphan*/  ibytes ; 
 int /*<<< orphan*/  ierrors ; 
 scalar_t__ interface ; 
 int /*<<< orphan*/  ipackets ; 
 int /*<<< orphan*/  iqdrops ; 
 int /*<<< orphan*/  obytes ; 
 int /*<<< orphan*/  oerrors ; 
 int /*<<< orphan*/  opackets ; 
 int /*<<< orphan*/  oqdrops ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC6(struct iftot *st)
{
	struct ifaddrs *ifap, *ifa;
	bool found = false;

	if (FUNC3(&ifap) != 0)
		FUNC5(EX_OSERR, "getifaddrs");

	FUNC1(st, sizeof(*st));

	for (ifa = ifap; ifa; ifa = ifa->ifa_next) {
		if (ifa->ifa_addr->sa_family != AF_LINK)
			continue;
		if (interface) {
			if (FUNC4(ifa->ifa_name, interface) == 0)
				found = true;
			else
				continue;
		}

		st->ift_ip += FUNC0(ipackets);
		st->ift_ie += FUNC0(ierrors);
		st->ift_id += FUNC0(iqdrops);
		st->ift_ib += FUNC0(ibytes);
		st->ift_op += FUNC0(opackets);
		st->ift_oe += FUNC0(oerrors);
		st->ift_od += FUNC0(oqdrops);
		st->ift_ob += FUNC0(obytes);
 		st->ift_co += FUNC0(collisions);
	}

	if (interface && found == false)
		FUNC5(EX_DATAERR, "interface %s not found", interface);

	FUNC2(ifap);
}