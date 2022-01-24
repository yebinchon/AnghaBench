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
typedef  int uint8_t ;
struct run_softc {int mac_ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct run_softc *sc, uint8_t agc)
{
	uint8_t bbp;

	if (sc->mac_ver == 0x3572) {
		FUNC0(sc, 27, &bbp);
		bbp &= ~(0x3 << 5);
		FUNC1(sc, 27, bbp | 0 << 5);	/* select Rx0 */
		FUNC1(sc, 66, agc);
		FUNC1(sc, 27, bbp | 1 << 5);	/* select Rx1 */
		FUNC1(sc, 66, agc);
	} else
		FUNC1(sc, 66, agc);
}