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
struct gpiokeys_softc {int /*<<< orphan*/  sc_dev; } ;
struct gpiokey {scalar_t__ pin; int /*<<< orphan*/  debounce_callout; int /*<<< orphan*/  repeat_callout; scalar_t__ irq_res; int /*<<< orphan*/  irq_rid; scalar_t__ intr_hl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpiokey*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpiokey*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpiokey*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void
FUNC8(struct gpiokeys_softc *sc, struct gpiokey *key)
{

	FUNC0(key);
	if (key->intr_hl)
		FUNC4(sc->sc_dev, key->irq_res, key->intr_hl);
	if (key->irq_res)
		FUNC3(sc->sc_dev, SYS_RES_IRQ,
		    key->irq_rid, key->irq_res);
	if (FUNC6(&key->repeat_callout))
		FUNC5(&key->repeat_callout);
	if (FUNC6(&key->debounce_callout))
		FUNC5(&key->debounce_callout);
	if (key->pin)
		FUNC7(key->pin);
	FUNC2(key);

	FUNC1(key);
}