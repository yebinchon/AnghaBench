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
typedef  int uint32_t ;

/* Variables and functions */
#define  CHIP_PROCESSOR_ID_XLP_3XX 131 
#define  CHIP_PROCESSOR_ID_XLP_416 130 
#define  CHIP_PROCESSOR_ID_XLP_432 129 
#define  CHIP_PROCESSOR_ID_XLP_8XX 128 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(void)
{
	uint32_t procid;
	int prid, rev;
	char *chip, *revstr;

	procid = FUNC0();
	prid = (procid >> 8) & 0xff;
	rev = procid & 0xff;

	switch (prid) {
	case CHIP_PROCESSOR_ID_XLP_8XX:
		chip = "XLP 832";
		break;
	case CHIP_PROCESSOR_ID_XLP_3XX:
		chip = "XLP 3xx";
		break;
	case CHIP_PROCESSOR_ID_XLP_432:
	case CHIP_PROCESSOR_ID_XLP_416:
		chip = "XLP 4xx";
		break;
	default:
		chip = "XLP ?xx";
		break;
	}
	switch (rev) {
	case 0:
		revstr = "A0"; break;
	case 1:
		revstr = "A1"; break;
	case 2:
		revstr = "A2"; break;
	case 3:
		revstr = "B0"; break;
	case 4:
		revstr = "B1"; break;
	default:
		revstr = "??"; break;
	}

	FUNC1("Processor info:\n");
	FUNC1("  Netlogic %s %s [%x]\n", chip, revstr, procid);
}