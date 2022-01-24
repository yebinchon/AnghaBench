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
struct module {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  run_autoinst ; 
 int /*<<< orphan*/  run_etag ; 
 int /*<<< orphan*/  usb_dev_configured ; 

__attribute__((used)) static int
FUNC2(struct module *mod, int what, void *arg)
{
	switch (what) {
	case MOD_LOAD:
		run_etag = FUNC1(usb_dev_configured,
		    run_autoinst, NULL, EVENTHANDLER_PRI_ANY);
		break;
	case MOD_UNLOAD:
		FUNC0(usb_dev_configured, run_etag);
		break;
	default:
		return (EOPNOTSUPP);
	}
	return (0);
}