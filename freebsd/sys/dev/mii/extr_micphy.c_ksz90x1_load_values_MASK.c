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
struct mii_softc {scalar_t__ mii_mpd_model; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;

/* Variables and functions */
 scalar_t__ MII_MODEL_MICREL_KSZ9031 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mii_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_softc*,int,int) ; 
 int FUNC5 (struct mii_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mii_softc*,int,int,int) ; 

__attribute__((used)) static void
FUNC7(struct mii_softc *sc, phandle_t node,
    uint32_t dev, uint32_t reg, char *field1, uint32_t f1mask, int f1off,
    char *field2, uint32_t f2mask, int f2off, char *field3, uint32_t f3mask,
    int f3off, char *field4, uint32_t f4mask, int f4off)
{
	pcell_t dts_value[1];
	int len;
	int val;

	if (sc->mii_mpd_model == MII_MODEL_MICREL_KSZ9031)
		val = FUNC5(sc, dev, reg);
	else
		val = FUNC3(sc, reg);

	if ((len = FUNC1(node, field1)) > 0) {
		FUNC0(node, field1, dts_value, len);
		val &= ~(f1mask << f1off);
		val |= (FUNC2(dts_value[0]) & f1mask) << f1off;
	}

	if (field2 != NULL && (len = FUNC1(node, field2)) > 0) {
		FUNC0(node, field2, dts_value, len);
		val &= ~(f2mask << f2off);
		val |= (FUNC2(dts_value[0]) & f2mask) << f2off;
	}

	if (field3 != NULL && (len = FUNC1(node, field3)) > 0) {
		FUNC0(node, field3, dts_value, len);
		val &= ~(f3mask << f3off);
		val |= (FUNC2(dts_value[0]) & f3mask) << f3off;
	}

	if (field4 != NULL && (len = FUNC1(node, field4)) > 0) {
		FUNC0(node, field4, dts_value, len);
		val &= ~(f4mask << f4off);
		val |= (FUNC2(dts_value[0]) & f4mask) << f4off;
	}

	if (sc->mii_mpd_model == MII_MODEL_MICREL_KSZ9031)
		FUNC6(sc, dev, reg, val);
	else
		FUNC4(sc, reg, val);
}