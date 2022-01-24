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
struct xencons_priv {TYPE_1__* ops; int /*<<< orphan*/  callout; } ;
struct tty {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int (* init ) (int /*<<< orphan*/ ,struct tty*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tty*) ; 
 int /*<<< orphan*/  driver_name ; 
 struct xencons_priv main_cons ; 
 int /*<<< orphan*/  shutdown_post_sync ; 
 int FUNC4 (int /*<<< orphan*/ ,struct tty*,int /*<<< orphan*/ ) ; 
 struct tty* FUNC5 (int /*<<< orphan*/ *,struct xencons_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xencons_intr ; 
 int /*<<< orphan*/  xencons_shutdown ; 
 int /*<<< orphan*/  xencons_ttydevsw ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct tty *tp;
	/*
	 * The main console is already allocated statically in order to
	 * support low-level console
	 */
	struct xencons_priv *cons;
	int err;

	cons = &main_cons;

	tp = FUNC5(&xencons_ttydevsw, cons);
	FUNC7(tp, NULL, "%s%r", driver_name, 0);
	FUNC3(dev, tp);

	FUNC1(&cons->callout, FUNC6(tp), 0);

	err = cons->ops->init(dev, tp, xencons_intr);
	if (err != 0) {
		FUNC2(dev, "Unable to initialize the console (%d)\n",
		    err);
		return (err);
	}

	/* register handler to flush console on shutdown */
	if ((FUNC0(shutdown_post_sync, xencons_shutdown,
	    tp, SHUTDOWN_PRI_DEFAULT)) == NULL)
		FUNC2(dev, "shutdown event registration failed!\n");

	return (0);
}