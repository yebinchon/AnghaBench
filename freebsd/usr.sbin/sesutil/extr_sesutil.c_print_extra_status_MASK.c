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
typedef  int u_char ;

/* Variables and functions */
#define  ELMTYP_ARRAY_DEV 132 
#define  ELMTYP_DEVICE 131 
#define  ELMTYP_FAN 130 
#define  ELMTYP_THERM 129 
#define  ELMTYP_VOM 128 
 int /*<<< orphan*/  TEMPERATURE_OFFSET ; 
 double FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(int eletype, u_char *cstat)
{
	bool title = false;

	if (cstat[0] & 0x40) {
		FUNC1(&title, "\t\t-{e:predicted_failure/true} Predicted Failure\n");
	}
	if (cstat[0] & 0x20) {
		FUNC1(&title, "\t\t-{e:disabled/true} Disabled\n");
	}
	if (cstat[0] & 0x10) {
		FUNC1(&title, "\t\t-{e:swapped/true} Swapped\n");
	}
	switch (eletype) {
	case ELMTYP_DEVICE:
	case ELMTYP_ARRAY_DEV:
		if (cstat[2] & 0x02) {
			FUNC1(&title, "\t\t- LED={q:led/locate}\n");
		}
		if (cstat[2] & 0x20) {
			FUNC1(&title, "\t\t- LED={q:led/fault}\n");
		}
		break;
	case ELMTYP_FAN:
		FUNC1(&title, "\t\t- Speed: {:speed/%d}{Uw:rpm}\n",
		    (((0x7 & cstat[1]) << 8) + cstat[2]) * 10);
		break;
	case ELMTYP_THERM:
		if (cstat[2]) {
			FUNC1(&title, "\t\t- Temperature: {:temperature/%d}{Uw:C}\n",
			    cstat[2] - TEMPERATURE_OFFSET);
		} else {
			FUNC1(&title, "\t\t- Temperature: -{q:temperature/reserved}-\n");
		}
		break;
	case ELMTYP_VOM:
		FUNC1(&title, "\t\t- Voltage: {:voltage/%.2f}{Uw:V}\n",
		    FUNC0(cstat + 2) / 100.0);
		break;
	}
	if (title) {
		FUNC2("extra_status");
	}
}