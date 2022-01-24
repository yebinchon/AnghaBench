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
typedef  size_t uint8_t ;
typedef  int uint64_t ;
struct hda_codec_cmd_ctl {char* name; int size; int wp; int rp; int run; int /*<<< orphan*/  dma_vaddr; } ;
struct hda_softc {struct hda_codec_cmd_ctl corb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  HDAC_CORBLBASE ; 
 int /*<<< orphan*/  HDAC_CORBRP ; 
 int /*<<< orphan*/  HDAC_CORBSIZE ; 
 int HDAC_CORBSIZE_CORBSIZE_MASK ; 
 int /*<<< orphan*/  HDAC_CORBUBASE ; 
 int /*<<< orphan*/  HDAC_CORBWP ; 
 int HDA_CORB_ENTRY_LEN ; 
 int* hda_corb_sizes ; 
 int /*<<< orphan*/  FUNC1 (struct hda_softc*,int,int) ; 
 int FUNC2 (struct hda_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec_cmd_ctl*) ; 

__attribute__((used)) static int
FUNC4(struct hda_softc *sc)
{
	struct hda_codec_cmd_ctl *corb = &sc->corb;
	uint8_t corbsize = 0;
	uint64_t corblbase = 0;
	uint64_t corbubase = 0;
	uint64_t corbpaddr = 0;

	corb->name = "CORB";

	corbsize = FUNC2(sc, HDAC_CORBSIZE) &		\
		   HDAC_CORBSIZE_CORBSIZE_MASK;
	corb->size = hda_corb_sizes[corbsize];

	if (!corb->size) {
		FUNC0("Invalid corb size\n");
		return (-1);
	}

	corblbase = FUNC2(sc, HDAC_CORBLBASE);
	corbubase = FUNC2(sc, HDAC_CORBUBASE);

	corbpaddr = corblbase | (corbubase << 32);
	FUNC0("CORB dma_paddr: %p\n", (void *)corbpaddr);

	corb->dma_vaddr = FUNC1(sc, corbpaddr,
			HDA_CORB_ENTRY_LEN * corb->size);
	if (!corb->dma_vaddr) {
		FUNC0("Fail to get the guest virtual address\n");
		return (-1);
	}

	corb->wp = FUNC2(sc, HDAC_CORBWP);
	corb->rp = FUNC2(sc, HDAC_CORBRP);

	corb->run = 1;

	FUNC3(corb);

	return (0);
}