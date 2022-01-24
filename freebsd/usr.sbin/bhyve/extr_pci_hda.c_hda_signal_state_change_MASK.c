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
struct hda_softc {int cad; struct hda_softc* hda; } ;
struct hda_codec_inst {int cad; struct hda_codec_inst* hda; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  HDAC_STATESTS ; 
 int /*<<< orphan*/  FUNC1 (struct hda_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_softc*) ; 

__attribute__((used)) static int
FUNC4(struct hda_codec_inst *hci)
{
	struct hda_softc *sc = NULL;
	uint32_t sdiwake = 0;

	FUNC1(hci);
	FUNC1(hci->hda);

	FUNC0("cad: 0x%x\n", hci->cad);

	sc = hci->hda;
	sdiwake = 1 << hci->cad;

	FUNC2(sc, HDAC_STATESTS, sdiwake, sdiwake);
	FUNC3(sc);

	return (0);
}