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
struct codec_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  clk; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AICR_DAC ; 
 int AICR_DAC_SB ; 
 int AUDIOIF_I2S ; 
 int AUDIOIF_M ; 
 int /*<<< orphan*/  CR_DAC ; 
 int /*<<< orphan*/  CR_HP ; 
 int /*<<< orphan*/  CR_VIC ; 
 int DAC_ADWL_16 ; 
 int DAC_ADWL_M ; 
 int DAC_MUTE ; 
 int DAC_SB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FCR_DAC ; 
 int FCR_DAC_48 ; 
 int HP_MUTE ; 
 int HP_SB ; 
 int VIC_SB ; 
 int VIC_SB_SLEEP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct codec_softc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct codec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  codec_spec ; 
 int /*<<< orphan*/  FUNC6 (struct codec_softc*,int /*<<< orphan*/ ,int) ; 
 struct codec_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct codec_softc *sc;
	uint8_t reg;

	sc = FUNC7(dev);
	sc->dev = dev;

	if (FUNC1(dev, codec_spec, sc->res)) {
		FUNC8(dev, "could not allocate resources for device\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC10(sc->res[0]);
	sc->bsh = FUNC9(sc->res[0]);

	if (FUNC4(dev, 0, "i2s", &sc->clk) != 0) {
		FUNC8(dev, "could not get i2s clock\n");
		FUNC2(dev, codec_spec, sc->res);
		return (ENXIO);
	}

	/* Initialize codec. */
	reg = FUNC5(sc, CR_VIC);
	reg &= ~(VIC_SB_SLEEP | VIC_SB);
	FUNC6(sc, CR_VIC, reg);

	FUNC0(20000);

	reg = FUNC5(sc, CR_DAC);
	reg &= ~(DAC_SB | DAC_MUTE);
	FUNC6(sc, CR_DAC, reg);

	FUNC0(10000);

	/* I2S, 16-bit, 48 kHz. */
	reg = FUNC5(sc, AICR_DAC);
	reg &= ~(AICR_DAC_SB | DAC_ADWL_M);
	reg |= DAC_ADWL_16;
	reg &= ~(AUDIOIF_M);
	reg |= AUDIOIF_I2S;
	FUNC6(sc, AICR_DAC, reg);

	FUNC0(10000);

	reg = FCR_DAC_48;
	FUNC6(sc, FCR_DAC, reg);

	FUNC0(10000);

	/* Unmute headphones. */
	reg = FUNC5(sc, CR_HP);
	reg &= ~(HP_SB | HP_MUTE);
	FUNC6(sc, CR_HP, reg);

	FUNC3(sc);

	return (0);
}