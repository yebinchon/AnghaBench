#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct sc_info {int adcn; int dacn; int /*<<< orphan*/  dev; TYPE_2__* caps; scalar_t__ speed; scalar_t__* intr; scalar_t__* run; int /*<<< orphan*/ * dac; TYPE_3__* cfg; int /*<<< orphan*/ * adc; } ;
struct TYPE_7__ {scalar_t__ subvendor; scalar_t__ subdevice; int scfg; scalar_t__ acl; scalar_t__ i2s; scalar_t__ spdif; TYPE_1__* codec; int /*<<< orphan*/  gpiostate; int /*<<< orphan*/  gpiodir; int /*<<< orphan*/  gpiomask; } ;
struct TYPE_6__ {int /*<<< orphan*/  fmtlist; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* init ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* create ) (int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int ENVY24HT_CCSM_SCFG_ADC ; 
 int ENVY24HT_CCSM_SCFG_DAC ; 
 int /*<<< orphan*/  ENVY24HT_CCS_ACL ; 
 int /*<<< orphan*/  ENVY24HT_CCS_CTL ; 
 scalar_t__ ENVY24HT_CCS_CTL_NATIVE ; 
 scalar_t__ ENVY24HT_CCS_CTL_RESET ; 
 int /*<<< orphan*/  ENVY24HT_CCS_I2S ; 
 int /*<<< orphan*/  ENVY24HT_CCS_IMASK ; 
 scalar_t__ ENVY24HT_CCS_IMASK_PMT ; 
 int /*<<< orphan*/  ENVY24HT_CCS_SCFG ; 
 int /*<<< orphan*/  ENVY24HT_CCS_SPDIF ; 
 int /*<<< orphan*/  ENVY24HT_ROUTE_CLASS_DMA ; 
 int /*<<< orphan*/  ENVY24HT_ROUTE_CLASS_MIX ; 
 int /*<<< orphan*/  ENVY24HT_ROUTE_DAC_1 ; 
 int /*<<< orphan*/  ENVY24HT_ROUTE_DAC_SPDIF ; 
 scalar_t__ PCIM_LAC_DISABLE ; 
 int /*<<< orphan*/  PCIR_LAC ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 TYPE_3__* cfg_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  envy24ht_playfmt ; 
 int /*<<< orphan*/  FUNC6 (struct sc_info*) ; 
 scalar_t__ FUNC7 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  envy24ht_recfmt ; 
 TYPE_3__* FUNC8 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sc_info*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sc_info*,int,int,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC20(struct sc_info *sc)
{
	u_int32_t data;
#if(0)
	int rtn;
#endif
	int i;
	u_int32_t sv, sd;


#if(0)
	device_printf(sc->dev, "envy24ht_init()\n");
#endif

	/* reset chip */
#if 0
	envy24ht_wrcs(sc, ENVY24HT_CCS_CTL, ENVY24HT_CCS_CTL_RESET, 1);
	DELAY(200);
	envy24ht_wrcs(sc, ENVY24HT_CCS_CTL, ENVY24HT_CCS_CTL_NATIVE, 1);
	DELAY(200);

	/* legacy hardware disable */
	data = pci_read_config(sc->dev, PCIR_LAC, 2);
	data |= PCIM_LAC_DISABLE;
	pci_write_config(sc->dev, PCIR_LAC, data, 2);
#endif

	/* check system configuration */
	sc->cfg = NULL;
	for (i = 0; cfg_table[i].subvendor != 0 || cfg_table[i].subdevice != 0; i++) {
		/* 1st: search configuration from table */
		sv = FUNC13(sc->dev);
		sd = FUNC12(sc->dev);
		if (sv == cfg_table[i].subvendor && sd == cfg_table[i].subdevice) {
#if(0)
			device_printf(sc->dev, "Set configuration from table\n");
#endif
			sc->cfg = &cfg_table[i];
			break;
		}
	}
	if (sc->cfg == NULL) {
		/* 2nd: read configuration from table */
		sc->cfg = FUNC8(sc);
	}
	sc->adcn = ((sc->cfg->scfg & ENVY24HT_CCSM_SCFG_ADC) >> 2) + 1; /* need to be fixed */
	sc->dacn = (sc->cfg->scfg & ENVY24HT_CCSM_SCFG_DAC) + 1;

	if (1 /* bootverbose */) {
		FUNC6(sc);
	}

	/* set system configuration */
	FUNC10(sc, ENVY24HT_CCS_SCFG, sc->cfg->scfg, 1);
	FUNC10(sc, ENVY24HT_CCS_ACL, sc->cfg->acl, 1);
	FUNC10(sc, ENVY24HT_CCS_I2S, sc->cfg->i2s, 1);
	FUNC10(sc, ENVY24HT_CCS_SPDIF, sc->cfg->spdif, 1);
	FUNC4(sc, sc->cfg->gpiomask);
	FUNC3(sc, sc->cfg->gpiodir);
	FUNC5(sc, sc->cfg->gpiostate);

	if ((sc->cfg->subvendor == 0x3031) && (sc->cfg->subdevice == 0x4553)) {
		FUNC11(sc, 0x22, 0x00, 0x07);
		FUNC11(sc, 0x22, 0x04, 0x5f | 0x80);
		FUNC11(sc, 0x22, 0x05, 0x5f | 0x80);
	}
	
	for (i = 0; i < sc->adcn; i++) {
		sc->adc[i] = sc->cfg->codec->create(sc->dev, sc, PCMDIR_REC, i);
		sc->cfg->codec->init(sc->adc[i]);
	}
	for (i = 0; i < sc->dacn; i++) {
		sc->dac[i] = sc->cfg->codec->create(sc->dev, sc, PCMDIR_PLAY, i);
		sc->cfg->codec->init(sc->dac[i]);
	}

	/* initialize DMA buffer */
#if(0)
	device_printf(sc->dev, "envy24ht_init(): initialize DMA buffer\n");
#endif
	if (FUNC2(sc))
		return ENOSPC;

	/* initialize status */
	sc->run[0] = sc->run[1] = 0;
	sc->intr[0] = sc->intr[1] = 0;
	sc->speed = 0;
	sc->caps[0].fmtlist = envy24ht_playfmt;
	sc->caps[1].fmtlist = envy24ht_recfmt;

	/* set channel router */
#if 0
	envy24ht_route(sc, ENVY24HT_ROUTE_DAC_1, ENVY24HT_ROUTE_CLASS_MIX, 0, 0);
	envy24ht_route(sc, ENVY24HT_ROUTE_DAC_SPDIF, ENVY24HT_ROUTE_CLASS_DMA, 0, 0);
	envy24ht_route(sc, ENVY24HT_ROUTE_DAC_SPDIF, ENVY24HT_ROUTE_CLASS_MIX, 0, 0);
#endif

	/* set macro interrupt mask */
	data = FUNC7(sc, ENVY24HT_CCS_IMASK, 1);
	FUNC10(sc, ENVY24HT_CCS_IMASK, data & ~ENVY24HT_CCS_IMASK_PMT, 1);
	data = FUNC7(sc, ENVY24HT_CCS_IMASK, 1);
#if(0)
	device_printf(sc->dev, "envy24ht_init(): CCS_IMASK-->0x%02x\n", data);
#endif

	return 0;
}