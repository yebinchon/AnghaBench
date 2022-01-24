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
struct hda_softc {scalar_t__ rirb_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDAC_RIRBCTL ; 
 int HDAC_RIRBCTL_RINTCTL ; 
 int /*<<< orphan*/  HDAC_RIRBSTS ; 
 int /*<<< orphan*/  HDAC_RIRBSTS_RINTFL ; 
 int FUNC0 (struct hda_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_softc*) ; 

__attribute__((used)) static void
FUNC3(struct hda_softc *sc)
{
	uint8_t rirbctl = FUNC0(sc, HDAC_RIRBCTL);

	if ((rirbctl & HDAC_RIRBCTL_RINTCTL) && sc->rirb_cnt) {
		sc->rirb_cnt = 0;
		FUNC1(sc, HDAC_RIRBSTS, HDAC_RIRBSTS_RINTFL,
				HDAC_RIRBSTS_RINTFL);
		FUNC2(sc);
	}
}