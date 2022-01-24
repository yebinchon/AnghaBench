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
struct xencons_priv {TYPE_1__* ops; int /*<<< orphan*/  intr_handle; } ;
struct tty {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int (* init ) (int /*<<< orphan*/ ,struct tty*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct tty* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct tty*,int /*<<< orphan*/ ) ; 
 struct xencons_priv* FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xencons_intr ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct xencons_priv *cons;
	struct tty *tp;
	int err;

	tp = FUNC0(dev);
	cons = FUNC3(tp);
	FUNC4(&cons->intr_handle);

	err = cons->ops->init(dev, tp, xencons_intr);
	if (err != 0) {
		FUNC1(dev, "Unable to resume the console (%d)\n", err);
		return (err);
	}

	return (0);
}