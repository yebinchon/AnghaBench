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
typedef  void* uint32_t ;
struct gpiokeys_softc {int /*<<< orphan*/  sc_dev; } ;
struct gpiokey {int repeat_delay; int repeat; int debounce_interval; scalar_t__ keycode; int /*<<< orphan*/  autorepeat; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * pin; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/  intr_hl; int /*<<< orphan*/  mtx; int /*<<< orphan*/  repeat_callout; int /*<<< orphan*/  debounce_callout; struct gpiokeys_softc* parent_sc; } ;
typedef  int /*<<< orphan*/  prop ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;

/* Variables and functions */
 int AUTOREPEAT_DELAY ; 
 int AUTOREPEAT_REPEAT ; 
 int /*<<< orphan*/  FUNC0 (struct gpiokey*) ; 
 scalar_t__ GPIOKEY_NONE ; 
 int /*<<< orphan*/  GPIO_INTR_EDGE_BOTH ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gpiokey*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gpiokey_intr ; 
 scalar_t__ FUNC13 (void*) ; 
 int hz ; 

__attribute__((used)) static void
FUNC14(struct gpiokeys_softc *sc, phandle_t node,
    struct gpiokey *key)
{
	pcell_t prop;
	char *name;
	uint32_t code;
	int err;
	const char *key_name;

	FUNC0(key);
	key->parent_sc = sc;
	FUNC7(&key->debounce_callout, &key->mtx, 0);
	FUNC7(&key->repeat_callout, &key->mtx, 0);

	name = NULL;
	if (FUNC2(node, "label", (void **)&name) == -1)
		FUNC2(node, "name", (void **)&name);

	if (name != NULL)
		key_name = name;
	else
		key_name = "unknown";

	key->autorepeat = FUNC3(node, "autorepeat");

	key->repeat_delay = (hz * AUTOREPEAT_DELAY) / 1000;
	if (key->repeat_delay == 0)
		key->repeat_delay = 1;

	key->repeat = (hz * AUTOREPEAT_REPEAT) / 1000;
	if (key->repeat == 0)
		key->repeat = 1;

	if ((FUNC1(node, "debounce-interval", &prop, sizeof(prop))) > 0)
		key->debounce_interval = FUNC9(prop);
	else
		key->debounce_interval = 5;

	if ((FUNC1(node, "freebsd,code", &prop, sizeof(prop))) > 0)
		key->keycode = FUNC9(prop);
	else if ((FUNC1(node, "linux,code", &prop, sizeof(prop))) > 0) {
		code = FUNC9(prop);
		key->keycode = FUNC13(code);
		if (key->keycode == GPIOKEY_NONE)
			FUNC8(sc->sc_dev, "<%s> failed to map linux,code value 0x%x\n",
			    key_name, code);
	}
	else
		FUNC8(sc->sc_dev, "<%s> no linux,code or freebsd,code property\n",
		    key_name);

	err = FUNC11(sc->sc_dev, node, 0, &key->pin);
	if (err) {
		FUNC8(sc->sc_dev, "<%s> failed to map pin\n", key_name);
		if (name)
			FUNC4(name);
		return;
	}

	key->irq_res = FUNC10(sc->sc_dev, &key->irq_rid,
	    RF_ACTIVE, key->pin, GPIO_INTR_EDGE_BOTH);
	if (!key->irq_res) {
		FUNC8(sc->sc_dev, "<%s> cannot allocate interrupt\n", key_name);
		FUNC12(key->pin);
		key->pin = NULL;
		if (name)
			FUNC4(name);
		return;
	}

	if (FUNC6(sc->sc_dev, key->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
			NULL, gpiokey_intr, key,
			&key->intr_hl) != 0) {
		FUNC8(sc->sc_dev, "<%s> unable to setup the irq handler\n", key_name);
		FUNC5(sc->sc_dev, SYS_RES_IRQ, key->irq_rid,
		    key->irq_res);
		FUNC12(key->pin);
		key->pin = NULL;
		key->irq_res = NULL;
		if (name)
			FUNC4(name);
		return;
	}

	if (bootverbose)
		FUNC8(sc->sc_dev, "<%s> code=%08x, autorepeat=%d, "\
		    "repeat=%d, repeat_delay=%d\n", key_name, key->keycode,
		    key->autorepeat, key->repeat, key->repeat_delay);

	if (name)
		FUNC4(name);
}