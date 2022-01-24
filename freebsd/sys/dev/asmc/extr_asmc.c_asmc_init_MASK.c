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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct asmc_softc {int sc_sms_intr_works; scalar_t__ sc_nfan; TYPE_1__* sc_model; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/ * smc_sms_x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ASMC_KEY_INTOK ; 
 int /*<<< orphan*/  ASMC_KEY_SMS ; 
 int /*<<< orphan*/  ASMC_KEY_SMS_FLAG ; 
 int /*<<< orphan*/  ASMC_KEY_SMS_HIGH ; 
 int /*<<< orphan*/  ASMC_KEY_SMS_HIGH_INT ; 
 int /*<<< orphan*/  ASMC_KEY_SMS_LOW ; 
 int /*<<< orphan*/  ASMC_KEY_SMS_LOW_INT ; 
 scalar_t__ ASMC_MAXFANS ; 
 int /*<<< orphan*/  ASMC_NKEYS ; 
 int ASMC_SMS_INIT1 ; 
 int ASMC_SMS_INIT2 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 struct asmc_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct asmc_softc *sc = FUNC7(dev);
	int i, error = 1;
	uint8_t buf[4];

	if (sc->sc_model->smc_sms_x == NULL)
		goto nosms;

	/*
	 * We are ready to receive interrupts from the SMS.
	 */
	buf[0] = 0x01;
	FUNC0(("intok key\n"));
	FUNC5(dev, ASMC_KEY_INTOK, buf, 1);
	FUNC1(50);

	/*
	 * Initiate the polling intervals.
	 */
	buf[0] = 20; /* msecs */
	FUNC0(("low int key\n"));
	FUNC5(dev, ASMC_KEY_SMS_LOW_INT, buf, 1);
	FUNC1(200);

	buf[0] = 20; /* msecs */
	FUNC0(("high int key\n"));
	FUNC5(dev, ASMC_KEY_SMS_HIGH_INT, buf, 1);
	FUNC1(200);

	buf[0] = 0x00;
	buf[1] = 0x60;
	FUNC0(("sms low key\n"));
	FUNC5(dev, ASMC_KEY_SMS_LOW, buf, 2);
	FUNC1(200);

	buf[0] = 0x01;
	buf[1] = 0xc0;
	FUNC0(("sms high key\n"));
	FUNC5(dev, ASMC_KEY_SMS_HIGH, buf, 2);
	FUNC1(200);

	/*
	 * I'm not sure what this key does, but it seems to be
	 * required.
	 */
	buf[0] = 0x01;
	FUNC0(("sms flag key\n"));
	FUNC5(dev, ASMC_KEY_SMS_FLAG, buf, 1);
	FUNC1(100);

	sc->sc_sms_intr_works = 0;

	/*
	 * Retry SMS initialization 1000 times
	 * (takes approx. 2 seconds in worst case)
	 */
	for (i = 0; i < 1000; i++) {
		if (FUNC4(dev, ASMC_KEY_SMS, buf, 2) == 0 &&
		    (buf[0] == ASMC_SMS_INIT1 && buf[1] == ASMC_SMS_INIT2)) {
			error = 0;
			sc->sc_sms_intr_works = 1;
			goto out;
		}
		buf[0] = ASMC_SMS_INIT1;
		buf[1] = ASMC_SMS_INIT2;
		FUNC0(("sms key\n"));
		FUNC5(dev, ASMC_KEY_SMS, buf, 2);
		FUNC1(50);
	}
	FUNC8(dev, "WARNING: Sudden Motion Sensor not initialized!\n");

out:
	FUNC6(dev);
nosms:
	sc->sc_nfan = FUNC3(dev);
	if (sc->sc_nfan > ASMC_MAXFANS) {
		FUNC8(dev, "more than %d fans were detected. Please "
		    "report this.\n", ASMC_MAXFANS);
		sc->sc_nfan = ASMC_MAXFANS;
	}

	if (bootverbose) {
		/*
		 * The number of keys is a 32 bit buffer
		 */
		FUNC4(dev, ASMC_NKEYS, buf, 4);
		FUNC8(dev, "number of keys: %d\n", FUNC9(*(uint32_t*)buf));
	}

#ifdef DEBUG
	asmc_dumpall(dev);
#endif

	return (error);
}