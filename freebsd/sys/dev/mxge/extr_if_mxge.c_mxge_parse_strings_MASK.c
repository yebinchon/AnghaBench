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
struct TYPE_3__ {char* eeprom_strings; int /*<<< orphan*/  dev; int /*<<< orphan*/  serial_number_string; int /*<<< orphan*/  product_code_string; int /*<<< orphan*/ * mac_addr; } ;
typedef  TYPE_1__ mxge_softc_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC4(mxge_softc_t *sc)
{
	char *ptr;
	int i, found_mac, found_sn2;
	char *endptr;

	ptr = sc->eeprom_strings;
	found_mac = 0;
	found_sn2 = 0;
	while (*ptr != '\0') {
		if (FUNC2(ptr, "MAC=", 4) == 0) {
			ptr += 4;
			for (i = 0;;) {
				sc->mac_addr[i] = FUNC3(ptr, &endptr, 16);
				if (endptr - ptr != 2)
					goto abort;
				ptr = endptr;
				if (++i == 6)
					break;
				if (*ptr++ != ':')
					goto abort;
			}
			found_mac = 1;
		} else if (FUNC2(ptr, "PC=", 3) == 0) {
			ptr += 3;
			FUNC1(sc->product_code_string, ptr,
			    sizeof(sc->product_code_string));
		} else if (!found_sn2 && (FUNC2(ptr, "SN=", 3) == 0)) {
			ptr += 3;
			FUNC1(sc->serial_number_string, ptr,
			    sizeof(sc->serial_number_string));
		} else if (FUNC2(ptr, "SN2=", 4) == 0) {
			/* SN2 takes precedence over SN */
			ptr += 4;
			found_sn2 = 1;
			FUNC1(sc->serial_number_string, ptr,
			    sizeof(sc->serial_number_string));
		}
		while (*ptr++ != '\0') {}
	}

	if (found_mac)
		return 0;

 abort:
	FUNC0(sc->dev, "failed to parse eeprom_strings\n");

	return ENXIO;
}