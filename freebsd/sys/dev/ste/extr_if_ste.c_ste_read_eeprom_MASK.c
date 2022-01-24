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
typedef  int /*<<< orphan*/  uint16_t ;
struct ste_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ste_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ste_softc*,int /*<<< orphan*/ ,int) ; 
 int STE_EEOPCODE_READ ; 
 int /*<<< orphan*/  STE_EEPROM_CTL ; 
 int /*<<< orphan*/  STE_EEPROM_DATA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ste_softc*) ; 

__attribute__((used)) static int
FUNC4(struct ste_softc *sc, uint16_t *dest, int off, int cnt)
{
	int err = 0, i;

	if (FUNC3(sc))
		return (1);

	for (i = 0; i < cnt; i++) {
		FUNC1(sc, STE_EEPROM_CTL, STE_EEOPCODE_READ | (off + i));
		err = FUNC3(sc);
		if (err)
			break;
		*dest = FUNC2(FUNC0(sc, STE_EEPROM_DATA));
		dest++;
	}

	return (err ? 1 : 0);
}