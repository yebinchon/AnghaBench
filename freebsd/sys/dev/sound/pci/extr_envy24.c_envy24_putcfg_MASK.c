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
struct sc_info {int adcn; int dacn; TYPE_1__* cfg; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int subvendor; int subdevice; int scfg; int acl; int i2s; int spdif; int gpiomask; int gpiodir; int gpiostate; } ;

/* Variables and functions */
 int PCIM_ACL_IMODE ; 
 int PCIM_ACL_MTC ; 
 int PCIM_ACL_OMODE ; 
#define  PCIM_I2S_16BIT 131 
#define  PCIM_I2S_18BIT 130 
#define  PCIM_I2S_20BIT 129 
#define  PCIM_I2S_24BIT 128 
 int PCIM_I2S_96KHZ ; 
 int PCIM_I2S_ID ; 
 int PCIM_I2S_RES ; 
 int PCIM_I2S_VOL ; 
 int PCIM_SCFG_AC97 ; 
 int PCIM_SCFG_MPU ; 
 int PCIM_SCFG_XIN2 ; 
 int PCIM_SPDIF_ID ; 
 int PCIM_SPDIF_IN ; 
 int PCIM_SPDIF_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(struct sc_info *sc)
{
	FUNC0(sc->dev, "system configuration\n");
	FUNC1("  SubVendorID: 0x%04x, SubDeviceID: 0x%04x\n",
	    sc->cfg->subvendor, sc->cfg->subdevice);
	FUNC1("  XIN2 Clock Source: ");
	switch (sc->cfg->scfg & PCIM_SCFG_XIN2) {
	case 0x00:
		FUNC1("22.5792MHz(44.1kHz*512)\n");
		break;
	case 0x40:
		FUNC1("16.9344MHz(44.1kHz*384)\n");
		break;
	case 0x80:
		FUNC1("from external clock synthesizer chip\n");
		break;
	default:
		FUNC1("illegal system setting\n");
	}
	FUNC1("  MPU-401 UART(s) #: ");
	if (sc->cfg->scfg & PCIM_SCFG_MPU)
		FUNC1("2\n");
	else
		FUNC1("1\n");
	FUNC1("  AC'97 codec: ");
	if (sc->cfg->scfg & PCIM_SCFG_AC97)
		FUNC1("not exist\n");
	else
		FUNC1("exist\n");
	FUNC1("  ADC #: ");
	FUNC1("%d\n", sc->adcn);
	FUNC1("  DAC #: ");
	FUNC1("%d\n", sc->dacn);
	FUNC1("  Multi-track converter type: ");
	if ((sc->cfg->acl & PCIM_ACL_MTC) == 0) {
		FUNC1("AC'97(SDATA_OUT:");
		if (sc->cfg->acl & PCIM_ACL_OMODE)
			FUNC1("packed");
		else
			FUNC1("split");
		FUNC1("|SDATA_IN:");
		if (sc->cfg->acl & PCIM_ACL_IMODE)
			FUNC1("packed");
		else
			FUNC1("split");
		FUNC1(")\n");
	}
	else {
		FUNC1("I2S(");
		if (sc->cfg->i2s & PCIM_I2S_VOL)
			FUNC1("with volume, ");
		if (sc->cfg->i2s & PCIM_I2S_96KHZ)
			FUNC1("96KHz support, ");
		switch (sc->cfg->i2s & PCIM_I2S_RES) {
		case PCIM_I2S_16BIT:
			FUNC1("16bit resolution, ");
			break;
		case PCIM_I2S_18BIT:
			FUNC1("18bit resolution, ");
			break;
		case PCIM_I2S_20BIT:
			FUNC1("20bit resolution, ");
			break;
		case PCIM_I2S_24BIT:
			FUNC1("24bit resolution, ");
			break;
		}
		FUNC1("ID#0x%x)\n", sc->cfg->i2s & PCIM_I2S_ID);
	}
	FUNC1("  S/PDIF(IN/OUT): ");
	if (sc->cfg->spdif & PCIM_SPDIF_IN)
		FUNC1("1/");
	else
		FUNC1("0/");
	if (sc->cfg->spdif & PCIM_SPDIF_OUT)
		FUNC1("1 ");
	else
		FUNC1("0 ");
	if (sc->cfg->spdif & (PCIM_SPDIF_IN | PCIM_SPDIF_OUT))
		FUNC1("ID# 0x%02x\n", (sc->cfg->spdif & PCIM_SPDIF_ID) >> 2);
	FUNC1("  GPIO(mask/dir/state): 0x%02x/0x%02x/0x%02x\n",
	    sc->cfg->gpiomask, sc->cfg->gpiodir, sc->cfg->gpiostate);
}