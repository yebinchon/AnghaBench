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
typedef  int u_int32_t ;
struct agg_info {int phys; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_PART_978 ; 
 int /*<<< orphan*/  ACPI_PART_CODEC_CLOCK ; 
 int /*<<< orphan*/  ACPI_PART_DAA ; 
 int /*<<< orphan*/  ACPI_PART_FM ; 
 int /*<<< orphan*/  ACPI_PART_GAME_PORT ; 
 int /*<<< orphan*/  ACPI_PART_GLUE ; 
 int /*<<< orphan*/  ACPI_PART_GPIO ; 
 int /*<<< orphan*/  ACPI_PART_HW_VOL ; 
 int /*<<< orphan*/  ACPI_PART_MIDI ; 
 int /*<<< orphan*/  ACPI_PART_PCI_IF ; 
 int /*<<< orphan*/  ACPI_PART_RINGBUS ; 
 int /*<<< orphan*/  ACPI_PART_SB ; 
 int /*<<< orphan*/  ACPI_PART_SPDIF ; 
 int /*<<< orphan*/  ACPI_PART_WP ; 
 int FUNC0 (struct agg_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct agg_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  CONF_LEGACY ; 
 int /*<<< orphan*/  CONF_MAESTRO ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int HOSTINT_CTRL_DSOUND_RESET ; 
 int HOSTINT_CTRL_HWVOL_ENABLED ; 
 int HOSTINT_CTRL_SOFT_RESET ; 
 int LEGACY_DISABLED ; 
 int MAESTRO_CHIBUS ; 
 int MAESTRO_DMA_PCITIMING ; 
 int MAESTRO_HWVOL ; 
 int MAESTRO_PMC ; 
 int MAESTRO_POSTEDWRITE ; 
 int MAESTRO_SPDIF ; 
 int MAESTRO_SWAP_LR ; 
#define  NEC_SUBID1 129 
#define  NEC_SUBID2 128 
 int /*<<< orphan*/  PCI_POWERSTATE_D1 ; 
 int /*<<< orphan*/  PCI_POWERSTATE_D2 ; 
 int /*<<< orphan*/  PCI_POWERSTATE_D3 ; 
 int /*<<< orphan*/  PORT_ASSP_CTRL_A ; 
 int /*<<< orphan*/  PORT_ASSP_CTRL_B ; 
 int /*<<< orphan*/  PORT_ASSP_CTRL_C ; 
 int /*<<< orphan*/  PORT_GPIO_DATA ; 
 int /*<<< orphan*/  PORT_GPIO_DIR ; 
 int /*<<< orphan*/  PORT_GPIO_MASK ; 
 int /*<<< orphan*/  PORT_HOSTINT_CTRL ; 
 int /*<<< orphan*/  PORT_RINGBUS_CTRL ; 
 int /*<<< orphan*/  PORT_RINGBUS_CTRL_B ; 
 int /*<<< orphan*/  PORT_WAVCACHE_CTRL ; 
 int RINGBUS_CTRL_ACLINK_ENABLED ; 
 int RINGBUS_CTRL_RINGBUS_ENABLED ; 
 int RINGBUS_CTRL_SPDIF ; 
 int RINGBUS_DEST_DAC ; 
 int RINGBUS_DEST_DSOUND_IN ; 
 int RINGBUS_DEST_STEREO ; 
 int /*<<< orphan*/  RINGBUS_SRC_ADC ; 
 int /*<<< orphan*/  RINGBUS_SRC_DSOUND ; 
 int WAVCACHE_BASEADDR_SHIFT ; 
 int WAVCACHE_ENABLED ; 
 int WAVCACHE_PCMBAR ; 
 int WAVCACHE_SGC_32_47 ; 
 int WAVCACHE_WTSIZE_2MB ; 
 int WPREG_BASE ; 
 int WPREG_CRAM_DATA ; 
 int WPREG_WAVE_ROMRAM ; 
 int WP_WAVE_DRAM_ENABLED ; 
 int WP_WAVE_VIRTUAL_ENABLED ; 
 int /*<<< orphan*/  FUNC3 (struct agg_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct agg_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct agg_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct agg_info*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct agg_info*,int,int) ; 

__attribute__((used)) static void
FUNC12(struct agg_info* ess)
{
	u_int32_t data;

	/* Setup PCI config registers. */

	/* Disable all legacy emulations. */
	data = FUNC7(ess->dev, CONF_LEGACY, 2);
	data |= LEGACY_DISABLED;
	FUNC8(ess->dev, CONF_LEGACY, data, 2);

	/* Disconnect from CHI. (Makes Dell inspiron 7500 work?)
	 * Enable posted write.
	 * Prefer PCI timing rather than that of ISA.
	 * Don't swap L/R. */
	data = FUNC7(ess->dev, CONF_MAESTRO, 4);
	data |= MAESTRO_PMC;
	data |= MAESTRO_CHIBUS | MAESTRO_POSTEDWRITE | MAESTRO_DMA_PCITIMING;
	data &= ~MAESTRO_SWAP_LR;
	FUNC8(ess->dev, CONF_MAESTRO, data, 4);

	/* Turn off unused parts if necessary. */
	/* consult CONF_MAESTRO. */
	if (data & MAESTRO_SPDIF)
		FUNC4(ess, ACPI_PART_SPDIF,	PCI_POWERSTATE_D2);
	else
		FUNC4(ess, ACPI_PART_SPDIF,	PCI_POWERSTATE_D1);
	if (data & MAESTRO_HWVOL)
		FUNC4(ess, ACPI_PART_HW_VOL,	PCI_POWERSTATE_D3);
	else
		FUNC4(ess, ACPI_PART_HW_VOL,	PCI_POWERSTATE_D1);

	/* parts that never be used */
	FUNC4(ess, ACPI_PART_978,	PCI_POWERSTATE_D1);
	FUNC4(ess, ACPI_PART_DAA,	PCI_POWERSTATE_D1);
	FUNC4(ess, ACPI_PART_GPIO,	PCI_POWERSTATE_D1);
	FUNC4(ess, ACPI_PART_SB,	PCI_POWERSTATE_D1);
	FUNC4(ess, ACPI_PART_FM,	PCI_POWERSTATE_D1);
	FUNC4(ess, ACPI_PART_MIDI,	PCI_POWERSTATE_D1);
	FUNC4(ess, ACPI_PART_GAME_PORT,	PCI_POWERSTATE_D1);

	/* parts that will be used only when play/recording */
	FUNC4(ess, ACPI_PART_WP,	PCI_POWERSTATE_D2);

	/* parts that should always be turned on */
	FUNC4(ess, ACPI_PART_CODEC_CLOCK, PCI_POWERSTATE_D3);
	FUNC4(ess, ACPI_PART_GLUE,	PCI_POWERSTATE_D3);
	FUNC4(ess, ACPI_PART_PCI_IF,	PCI_POWERSTATE_D3);
	FUNC4(ess, ACPI_PART_RINGBUS,	PCI_POWERSTATE_D3);

	/* Reset direct sound. */
	FUNC1(ess, PORT_HOSTINT_CTRL, HOSTINT_CTRL_SOFT_RESET, 2);
	FUNC2(100);
	FUNC1(ess, PORT_HOSTINT_CTRL, 0, 2);
	FUNC2(100);
	FUNC1(ess, PORT_HOSTINT_CTRL, HOSTINT_CTRL_DSOUND_RESET, 2);
	FUNC2(100);
	FUNC1(ess, PORT_HOSTINT_CTRL, 0, 2);
	FUNC2(100);

	/* Enable hardware volume control interruption. */
	if (data & MAESTRO_HWVOL)	/* XXX - why not use device flags? */
		FUNC1(ess, PORT_HOSTINT_CTRL,HOSTINT_CTRL_HWVOL_ENABLED, 2);

	/* Setup Wave Processor. */

	/* Enable WaveCache, set DMA base address. */
	FUNC11(ess, WPREG_WAVE_ROMRAM,
	    WP_WAVE_VIRTUAL_ENABLED | WP_WAVE_DRAM_ENABLED);
	FUNC11(ess, WPREG_CRAM_DATA, 0);

	FUNC1(ess, PORT_WAVCACHE_CTRL,
	       WAVCACHE_ENABLED | WAVCACHE_WTSIZE_2MB | WAVCACHE_SGC_32_47, 2);

	for (data = WAVCACHE_PCMBAR; data < WAVCACHE_PCMBAR + 4; data++)
		FUNC10(ess, data, ess->phys >> WAVCACHE_BASEADDR_SHIFT);

	/* Setup Codec/Ringbus. */
	FUNC3(ess);
	FUNC1(ess, PORT_RINGBUS_CTRL,
	       RINGBUS_CTRL_RINGBUS_ENABLED | RINGBUS_CTRL_ACLINK_ENABLED, 4);

	FUNC11(ess, 0x08, 0xB004);
	FUNC11(ess, 0x09, 0x001B);
	FUNC11(ess, 0x0A, 0x8000);
	FUNC11(ess, 0x0B, 0x3F37);
	FUNC11(ess, WPREG_BASE, 0x8598);	/* Parallel I/O */
	FUNC11(ess, WPREG_BASE + 1, 0x7632);
	FUNC9(ess, RINGBUS_SRC_ADC,
	    RINGBUS_DEST_STEREO | RINGBUS_DEST_DSOUND_IN);
	FUNC9(ess, RINGBUS_SRC_DSOUND,
	    RINGBUS_DEST_STEREO | RINGBUS_DEST_DAC);

	/* Enable S/PDIF if necessary. */
	if (FUNC7(ess->dev, CONF_MAESTRO, 4) & MAESTRO_SPDIF)
		/* XXX - why not use device flags? */
		FUNC1(ess, PORT_RINGBUS_CTRL_B, RINGBUS_CTRL_SPDIF |
		       FUNC0(ess, PORT_RINGBUS_CTRL_B, 1), 1);

	/* Setup ASSP. Needed for Dell Inspiron 7500? */
	FUNC1(ess, PORT_ASSP_CTRL_B, 0x00, 1);
	FUNC1(ess, PORT_ASSP_CTRL_A, 0x03, 1);
	FUNC1(ess, PORT_ASSP_CTRL_C, 0x00, 1);

	/*
	 * Setup GPIO.
	 * There seems to be speciality with NEC systems.
	 */
	switch (FUNC6(ess->dev)
	    | (FUNC5(ess->dev) << 16)) {
	case NEC_SUBID1:
	case NEC_SUBID2:
		/* Matthew Braithwaite <matt@braithwaite.net> reported that
		 * NEC Versa LX doesn't need GPIO operation. */
		FUNC1(ess, PORT_GPIO_MASK, 0x9ff, 2);
		FUNC1(ess, PORT_GPIO_DIR,
		       FUNC0(ess, PORT_GPIO_DIR, 2) | 0x600, 2);
		FUNC1(ess, PORT_GPIO_DATA, 0x200, 2);
		break;
	}
}