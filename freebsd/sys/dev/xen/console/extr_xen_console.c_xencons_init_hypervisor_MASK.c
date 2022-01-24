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
struct xencons_priv {int /*<<< orphan*/  intr_handle; } ;
struct tty {int dummy; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int INTR_MPSAFE ; 
 int INTR_TYPE_TTY ; 
 int /*<<< orphan*/  VIRQ_CONSOLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct xencons_priv* FUNC1 (struct tty*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tty*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(device_t dev, struct tty *tp,
    driver_intr_t intr_handler)
{
	struct xencons_priv *cons;
	int err;

	cons = FUNC1(tp);

	err = FUNC2(dev, VIRQ_CONSOLE, 0, NULL,
	    intr_handler, tp, INTR_TYPE_TTY | INTR_MPSAFE, &cons->intr_handle);
	if (err != 0)
		FUNC0(dev, "Can't register console interrupt\n");

	return (err);
}