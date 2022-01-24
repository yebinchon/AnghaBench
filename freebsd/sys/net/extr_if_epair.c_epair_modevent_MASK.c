#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_3__ {int nh_qlimit; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ epair_nh ; 
 char* epairname ; 
 int ifqmaxlen ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(module_t mod, int type, void *data)
{
	int qlimit;

	switch (type) {
	case MOD_LOAD:
		/* For now limit us to one global mutex and one inq. */
		FUNC1();
		epair_nh.nh_qlimit = 42 * ifqmaxlen; /* 42 shall be the number. */
		if (FUNC0("net.link.epair.netisr_maxqlen", &qlimit))
		    epair_nh.nh_qlimit = qlimit;
		FUNC2(&epair_nh);
		if (bootverbose)
			FUNC3("%s initialized.\n", epairname);
		break;
	case MOD_UNLOAD:
		/* Handled in epair_uninit() */
		break;
	default:
		return (EOPNOTSUPP);
	}
	return (0);
}