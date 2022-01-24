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
struct firmware {int datasize; scalar_t__ data; } ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct bwn_mac {TYPE_1__ mac_phy; struct bwn_softc* mac_sc; } ;
struct bwn_fwhdr {int type; int ver; int /*<<< orphan*/  size; } ;
struct bwn_fwfile {char const* filename; int type; struct firmware const* fw; } ;
typedef  int /*<<< orphan*/  namebuf ;
typedef  enum bwn_fwtype { ____Placeholder_bwn_fwtype } bwn_fwtype ;

/* Variables and functions */
#define  BWN_FWTYPE_IV 130 
 int BWN_FWTYPE_OPENSOURCE ; 
#define  BWN_FWTYPE_PCM 129 
#define  BWN_FWTYPE_UCODE 128 
 scalar_t__ BWN_PHYTYPE_LP ; 
 int ENOENT ; 
 int EPROTO ; 
 int /*<<< orphan*/  FIRMWARE_UNLOAD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_fwfile*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 struct firmware* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*,char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC7(struct bwn_mac *mac, enum bwn_fwtype type,
    const char *name, struct bwn_fwfile *bfw)
{
	const struct bwn_fwhdr *hdr;
	struct bwn_softc *sc = mac->mac_sc;
	const struct firmware *fw;
	char namebuf[64];

	if (name == NULL) {
		FUNC1(bfw);
		return (0);
	}
	if (bfw->filename != NULL) {
		if (bfw->type == type && (FUNC6(bfw->filename, name) == 0))
			return (0);
		FUNC1(bfw);
	}

	FUNC5(namebuf, sizeof(namebuf), "bwn%s_v4_%s%s",
	    (type == BWN_FWTYPE_OPENSOURCE) ? "-open" : "",
	    (mac->mac_phy.type == BWN_PHYTYPE_LP) ? "lp_" : "", name);
	/* XXX Sleeping on "fwload" with the non-sleepable locks held */
	fw = FUNC3(namebuf);
	if (fw == NULL) {
		FUNC2(sc->sc_dev, "the fw file(%s) not found\n",
		    namebuf);
		return (ENOENT);
	}
	if (fw->datasize < sizeof(struct bwn_fwhdr))
		goto fail;
	hdr = (const struct bwn_fwhdr *)(fw->data);
	switch (hdr->type) {
	case BWN_FWTYPE_UCODE:
	case BWN_FWTYPE_PCM:
		if (FUNC0(hdr->size) !=
		    (fw->datasize - sizeof(struct bwn_fwhdr)))
			goto fail;
		/* FALLTHROUGH */
	case BWN_FWTYPE_IV:
		if (hdr->ver != 1)
			goto fail;
		break;
	default:
		goto fail;
	}
	bfw->filename = name;
	bfw->fw = fw;
	bfw->type = type;
	return (0);
fail:
	FUNC2(sc->sc_dev, "the fw file(%s) format error\n", namebuf);
	if (fw != NULL)
		FUNC4(fw, FIRMWARE_UNLOAD);
	return (EPROTO);
}