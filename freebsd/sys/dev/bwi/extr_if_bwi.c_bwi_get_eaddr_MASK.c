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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct bwi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bwi_softc *sc, uint16_t eaddr_ofs, uint8_t *eaddr)
{
	int i;

	for (i = 0; i < 3; ++i) {
		*((uint16_t *)eaddr + i) =
			FUNC1(FUNC0(sc, eaddr_ofs + 2 * i));
	}
}