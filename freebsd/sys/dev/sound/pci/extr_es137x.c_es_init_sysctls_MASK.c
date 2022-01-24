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
struct es_info {TYPE_1__* ch; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  dev ;
struct TYPE_2__ {int /*<<< orphan*/ * channel; } ;

/* Variables and functions */
 int CT5880REV_CT5880_C ; 
 int CT5880REV_CT5880_D ; 
 int CT5880REV_CT5880_E ; 
 int CT5880_PCI_ID ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int ES1370_PCI_ID ; 
 int ES1371REV_CT5880_A ; 
 int ES1371REV_ES1373_8 ; 
 int ES1371_PCI_ID ; 
 size_t ES_ADC ; 
 size_t ES_DAC1 ; 
 size_t ES_DAC2 ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  PCIR_LATTIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct es_info* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  sysctl_es137x_fixed_rate ; 
 int /*<<< orphan*/  sysctl_es137x_latency_timer ; 
 int /*<<< orphan*/  sysctl_es137x_single_pcm_mixer ; 
 int /*<<< orphan*/  sysctl_es137x_spdif_enable ; 
 int /*<<< orphan*/  sysctl_es_polling ; 

__attribute__((used)) static void
FUNC11(device_t dev)
{
	struct es_info *es;
	int r, devid, revid;

	devid = FUNC6(dev);
	revid = FUNC7(dev);
	es = FUNC9(dev);
	if ((devid == ES1371_PCI_ID && revid == ES1371REV_ES1373_8) ||
	    (devid == ES1371_PCI_ID && revid == ES1371REV_CT5880_A) ||
	    (devid == CT5880_PCI_ID && revid == CT5880REV_CT5880_C) ||
	    (devid == CT5880_PCI_ID && revid == CT5880REV_CT5880_D) ||
	    (devid == CT5880_PCI_ID && revid == CT5880REV_CT5880_E)) {
		/* XXX: an user should be able to set this with a control tool,
		   if not done before 7.0-RELEASE, this needs to be converted
		   to a device specific sysctl "dev.pcm.X.yyy" via
		   device_get_sysctl_*() as discussed on multimedia@ in msg-id
		   <861wujij2q.fsf@xps.des.no> */
		FUNC0(FUNC3(dev),
		    FUNC1(FUNC4(dev)), OID_AUTO,
		    "spdif_enabled", CTLTYPE_INT | CTLFLAG_RW, dev, sizeof(dev),
		    sysctl_es137x_spdif_enable, "I",
		    "Enable S/PDIF output on primary playback channel");
	} else if (devid == ES1370_PCI_ID) {
		/*
		 * Enable fixed rate sysctl if both DAC2 / ADC enabled.
		 */
		if (es->ch[ES_DAC2].channel != NULL &&
		    es->ch[ES_ADC].channel != NULL) {
		/* XXX: an user should be able to set this with a control tool,
		   if not done before 7.0-RELEASE, this needs to be converted
		   to a device specific sysctl "dev.pcm.X.yyy" via
		   device_get_sysctl_*() as discussed on multimedia@ in msg-id
		   <861wujij2q.fsf@xps.des.no> */
			FUNC0(FUNC3(dev),
			    FUNC1(FUNC4(dev)),
			    OID_AUTO, "fixed_rate", CTLTYPE_INT | CTLFLAG_RW,
			    dev, sizeof(dev), sysctl_es137x_fixed_rate, "I",
			    "Enable fixed rate playback/recording");
		}
		/*
		 * Enable single pcm mixer sysctl if both DAC1/2 enabled.
		 */
		if (es->ch[ES_DAC1].channel != NULL &&
		    es->ch[ES_DAC2].channel != NULL) {
		/* XXX: an user should be able to set this with a control tool,
		   if not done before 7.0-RELEASE, this needs to be converted
		   to a device specific sysctl "dev.pcm.X.yyy" via
		   device_get_sysctl_*() as discussed on multimedia@ in msg-id
		   <861wujij2q.fsf@xps.des.no> */
			FUNC0(FUNC3(dev),
			    FUNC1(FUNC4(dev)),
			    OID_AUTO, "single_pcm_mixer",
			    CTLTYPE_INT | CTLFLAG_RW, dev, sizeof(dev),
			    sysctl_es137x_single_pcm_mixer, "I",
			    "Single PCM mixer controller for both DAC1/DAC2");
		}
	}
	if (FUNC10(FUNC2(dev), FUNC5(dev),
	    "latency_timer", &r) == 0 && !(r < 0 || r > 255))
		FUNC8(dev, PCIR_LATTIMER, r, 1);
	/* XXX: this needs to be converted to a device specific sysctl
	   "dev.pcm.X.yyy" via device_get_sysctl_*() as discussed on
	   multimedia@ in msg-id <861wujij2q.fsf@xps.des.no> */
	FUNC0(FUNC3(dev),
	    FUNC1(FUNC4(dev)), OID_AUTO,
	    "latency_timer", CTLTYPE_INT | CTLFLAG_RW, dev, sizeof(dev),
	    sysctl_es137x_latency_timer, "I",
	    "PCI Latency Timer configuration");
	FUNC0(FUNC3(dev),
	    FUNC1(FUNC4(dev)), OID_AUTO,
	    "polling", CTLTYPE_INT | CTLFLAG_RW, dev, sizeof(dev),
	    sysctl_es_polling, "I",
	    "Enable polling mode");
}