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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EEXIST ; 
 int EOPNOTSUPP ; 
 int MOD_LOAD ; 
 int MOD_UNLOAD ; 
 scalar_t__ dummynet_io ; 
 int /*<<< orphan*/  ip_dn_ctl ; 
 int /*<<< orphan*/  ip_dn_ctl_ptr ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ ip_dn_io_ptr ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(module_t mod, int type, void *data)
{

	if (type == MOD_LOAD) {
		if (ip_dn_io_ptr) {
			FUNC2("DUMMYNET already loaded\n");
			return EEXIST ;
		}
		FUNC1();
		ip_dn_ctl_ptr = ip_dn_ctl;
		ip_dn_io_ptr = dummynet_io;
		return 0;
	} else if (type == MOD_UNLOAD) {
		FUNC0(1 /* last */);
		return 0;
	} else
		return EOPNOTSUPP;
}