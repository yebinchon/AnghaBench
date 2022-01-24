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
struct xencons_priv {scalar_t__ evtchn; int /*<<< orphan*/  intr_handle; } ;
struct tty {int dummy; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENODEV ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_TTY ; 
 struct xencons_priv* FUNC0 (struct tty*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tty*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(device_t dev, struct tty *tp, driver_intr_t intr_handler)
{
	struct xencons_priv *cons;
	int err;

	cons = FUNC0(tp);

	if (cons->evtchn == 0)
		return (ENODEV);

	err = FUNC1(dev, cons->evtchn, NULL,
	    intr_handler, tp, INTR_TYPE_TTY | INTR_MPSAFE, &cons->intr_handle);
	if (err != 0)
		return (err);

	return (0);
}