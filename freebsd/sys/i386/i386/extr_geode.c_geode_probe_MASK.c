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
typedef  char u_char ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BIOS_OEM_MAXLEN ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  advantech_watchdog ; 
 int /*<<< orphan*/  bios_advantech ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  bios_pcengines ; 
 int /*<<< orphan*/  bios_pcengines_55 ; 
 int /*<<< orphan*/  bios_soekris ; 
 int /*<<< orphan*/  bios_soekris_55 ; 
 int /*<<< orphan*/  bootverbose ; 
 int cba ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  cs5536_watchdog ; 
 int /*<<< orphan*/  geode_counter ; 
 int /*<<< orphan*/  geode_cputicks ; 
 int /*<<< orphan*/  geode_timecounter ; 
 int /*<<< orphan*/  geode_watchdog ; 
 int gpio ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 void* led1 ; 
 int led1b ; 
 void* led2 ; 
 int led2b ; 
 void* led3 ; 
 int led3b ; 
 void* FUNC5 (int /*<<< orphan*/  (*) (int*,int),int*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  watchdog_list ; 

__attribute__((used)) static int
FUNC14(device_t self)
{
#define BIOS_OEM_MAXLEN 80
	static u_char bios_oem[BIOS_OEM_MAXLEN] = "\0";

	switch (FUNC8(self)) {
	case 0x0515100b:
		if (geode_counter == 0) {
			/*
			 * The address of the CBA is written to this register
			 * by the bios, see p161 in data sheet.
			 */
			cba = FUNC9(self, 0x64, 4);
			if (bootverbose)
				FUNC10("Geode CBA@ 0x%x\n", cba);
			geode_counter = cba + 0x08;
			FUNC7(cba + 0x0d, 2);
			if (bootverbose)
				FUNC10("Geode rev: %02x %02x\n",
					FUNC4(cba + 0x3c), FUNC4(cba + 0x3d));
			FUNC13(&geode_timecounter);
			FUNC0(watchdog_list, geode_watchdog,
			    NULL, 0);
			FUNC12(geode_cputicks, 27000000, 0);
		}
		break;
	case 0x0510100b:
		gpio = FUNC9(self, FUNC1(0), 4);
		gpio &= ~0x1f;
		if (bootverbose)
			FUNC10("Geode GPIO@ = %x\n", gpio);
		if (FUNC2(&bios_soekris,
		    bios_oem, sizeof bios_oem) > 0 ) {
			led1b = 20;
			led1 = FUNC5(led_func, &led1b, "error");
		} else if (FUNC2(&bios_pcengines,
		    bios_oem, sizeof bios_oem) > 0 ) {
			led1b = -2;
			led2b = -3;
			led3b = -18;
			led1 = FUNC5(led_func, &led1b, "led1");
			led2 = FUNC5(led_func, &led2b, "led2");
			led3 = FUNC5(led_func, &led3b, "led3");
			/*
		 	* Turn on first LED so we don't make
			* people think their box just died.
		 	*/
			FUNC6(&led1b, 1);
		}
		if (*bios_oem)
			FUNC10("Geode %s\n", bios_oem);
		break;
	case 0x01011078:
		if (FUNC2(&bios_advantech,
		    bios_oem, sizeof bios_oem) > 0 ) {
			FUNC10("Geode %s\n", bios_oem);
			FUNC0(watchdog_list, advantech_watchdog,
			    NULL, 0);
		}
		break;
	case 0x20801022:
		if (FUNC2(&bios_soekris_55,
		    bios_oem, sizeof bios_oem) > 0 ) {
			led1b = 6;
			led1 = FUNC5(cs5536_led_func, &led1b, "error");
		} else if (FUNC2(&bios_pcengines_55,
		    bios_oem, sizeof bios_oem) > 0 ) {
			led1b = -6;
			led2b = -25;
			led3b = -27;
			led1 = FUNC5(cs5536_led_func, &led1b, "led1");
			led2 = FUNC5(cs5536_led_func, &led2b, "led2");
			led3 = FUNC5(cs5536_led_func, &led3b, "led3");
			/*
		 	* Turn on first LED so we don't make
			* people think their box just died.
		 	*/
			FUNC3(&led1b, 1);
		}
		if (*bios_oem)
			FUNC10("Geode LX: %s\n", bios_oem);
		if (bootverbose)
			FUNC10("MFGPT bar: %jx\n", FUNC11(0x5140000d));
		FUNC0(watchdog_list, cs5536_watchdog, NULL, 0);
		break;
	}
	return (ENXIO);
}