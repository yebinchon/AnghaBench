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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_2__ {int /*<<< orphan*/  modal_header_5g; int /*<<< orphan*/  modal_header_2g; } ;
typedef  TYPE_1__ ar9300_eeprom_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 

int
FUNC9(int argc, char *argv[])
{
	uint16_t *eep = NULL;
	const ar9300_eeprom_t *ee;

	eep = FUNC0(4096, sizeof(int16_t));

	if (argc < 2)
		FUNC8(argv);

	FUNC6(argv[1], eep);
	ee = (ar9300_eeprom_t *) eep;

	FUNC2(eep);
	FUNC1(eep);

	FUNC7("\n2GHz modal:\n");
	FUNC3(&ee->modal_header_2g);

	FUNC7("\n5GHz modal:\n");
	FUNC3(&ee->modal_header_5g);

	FUNC5(eep);
	FUNC4(0);
}