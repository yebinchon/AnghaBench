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
struct hda_softc {struct hda_codec_cmd_ctl rirb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  HDAC_RIRBLBASE ; 
 int /*<<< orphan*/  HDAC_RIRBSIZE ; 
 int HDAC_RIRBSIZE_RIRBSIZE_MASK ; 
 int /*<<< orphan*/  HDAC_RIRBUBASE ; 
 int /*<<< orphan*/  HDAC_RIRBWP ; 
 int HDA_RIRB_ENTRY_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct hda_softc*,int,int) ; 
 int FUNC2 (struct hda_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec_cmd_ctl*) ; 
 int* hda_rirb_sizes ; 

__attribute__((used)) static int
FUNC4(struct hda_softc *sc)
{
	struct hda_codec_cmd_ctl *rirb = &sc->rirb;
	uint8_t rirbsize = 0;
	uint64_t rirblbase = 0;
	uint64_t rirbubase = 0;
	uint64_t rirbpaddr = 0;

	rirb->name = "RIRB";

	rirbsize = FUNC2(sc, HDAC_RIRBSIZE) &		\
		   HDAC_RIRBSIZE_RIRBSIZE_MASK;
	rirb->size = hda_rirb_sizes[rirbsize];

	if (!rirb->size) {
		FUNC0("Invalid rirb size\n");
		return (-1);
	}

	rirblbase = FUNC2(sc, HDAC_RIRBLBASE);
	rirbubase = FUNC2(sc, HDAC_RIRBUBASE);

	rirbpaddr = rirblbase | (rirbubase << 32);
	FUNC0("RIRB dma_paddr: %p\n", (void *)rirbpaddr);

	rirb->dma_vaddr = FUNC1(sc, rirbpaddr,
			HDA_RIRB_ENTRY_LEN * rirb->size);
	if (!rirb->dma_vaddr) {
		FUNC0("Fail to get the guest virtual address\n");
		return (-1);
	}

	rirb->wp = FUNC2(sc, HDAC_RIRBWP);
	rirb->rp = 0x0000;

	rirb->run = 1;

	FUNC3(rirb);

	return (0);
}