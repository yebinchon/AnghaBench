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
typedef  int /*<<< orphan*/  uint32_t ;
struct hda_codec_cmd_ctl {int wp; int rp; int size; scalar_t__ run; scalar_t__ dma_vaddr; } ;
struct hda_softc {struct hda_codec_cmd_ctl corb; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDAC_CORBRP ; 
 int /*<<< orphan*/  HDAC_CORBWP ; 
 int HDA_CORB_ENTRY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct hda_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_softc*) ; 
 int FUNC4 (struct hda_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct hda_softc *sc)
{
	struct hda_codec_cmd_ctl *corb = &sc->corb;
	uint32_t verb = 0;
	int err;

	corb->wp = FUNC2(sc, HDAC_CORBWP);

	while (corb->rp != corb->wp && corb->run) {
		corb->rp++;
		corb->rp %= corb->size;

		verb = FUNC1(corb->dma_vaddr +		\
				HDA_CORB_ENTRY_LEN * corb->rp);

		err = FUNC4(sc, verb);
		FUNC0(!err);
	}

	FUNC5(sc, HDAC_CORBRP, corb->rp);

	if (corb->run)
		FUNC3(sc);

	return (0);
}