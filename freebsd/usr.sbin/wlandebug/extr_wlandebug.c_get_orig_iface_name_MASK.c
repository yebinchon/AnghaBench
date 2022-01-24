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
struct ifconfig_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifconfig_handle*) ; 
 scalar_t__ FUNC3 (struct ifconfig_handle*,char*,char**) ; 
 struct ifconfig_handle* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC8(char *oid, size_t oid_size, char *name)
{
	struct ifconfig_handle *h;
	char *orig_name;

	h = FUNC4();
	if (FUNC3(h, name, &orig_name) < 0) {
		/* check for original interface name. */
		orig_name = name;
	}

	if (FUNC6(orig_name) < FUNC6("wlan") + 1 ||
	    FUNC7(orig_name, "wlan", 4) != 0)
		FUNC0(1, "expecting a wlan interface name");

	FUNC2(h);
	FUNC5(oid, oid_size, orig_name);
	if (orig_name != name)
		FUNC1(orig_name);
}