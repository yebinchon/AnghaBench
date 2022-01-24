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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct softdma_softc {int /*<<< orphan*/ * res; } ;
struct softdma_desc {int control; int src_addr; int len; } ;
struct softdma_channel {struct softdma_softc* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_ONCHIP_FIFO_MEM_CORE_DATA ; 
 int A_ONCHIP_FIFO_MEM_CORE_EMPTY_SHIFT ; 
 int A_ONCHIP_FIFO_MEM_CORE_EOP ; 
 int /*<<< orphan*/  A_ONCHIP_FIFO_MEM_CORE_METADATA ; 
 int A_ONCHIP_FIFO_MEM_CORE_SOP ; 
 int CONTROL_GEN_EOP ; 
 int CONTROL_GEN_SOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct softdma_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct softdma_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct softdma_channel *chan, struct softdma_desc *desc)
{
	struct softdma_softc *sc;
	uint64_t addr;
	uint64_t buf;
	uint32_t word;
	uint32_t missing;
	uint32_t reg;
	int got_bits;
	int len;

	sc = chan->sc;

	FUNC1(sc);

	/* Set start of packet. */
	if (desc->control & CONTROL_GEN_SOP)
		FUNC2(sc, A_ONCHIP_FIFO_MEM_CORE_METADATA,
		    A_ONCHIP_FIFO_MEM_CORE_SOP);

	got_bits = 0;
	buf = 0;

	addr = desc->src_addr;
	len = desc->len;

	if (addr & 1) {
		buf = (buf << 8) | *(uint8_t *)addr;
		got_bits += 8;
		addr += 1;
		len -= 1;
	}

	if (len >= 2 && addr & 2) {
		buf = (buf << 16) | *(uint16_t *)addr;
		got_bits += 16;
		addr += 2;
		len -= 2;
	}

	while (len >= 4) {
		buf = (buf << 32) | (uint64_t)*(uint32_t *)addr;
		addr += 4;
		len -= 4;
		word = (uint32_t)((buf >> got_bits) & 0xffffffff);

		FUNC1(sc);
		if (len == 0 && got_bits == 0 &&
		    (desc->control & CONTROL_GEN_EOP) != 0)
			FUNC2(sc, A_ONCHIP_FIFO_MEM_CORE_METADATA,
			    A_ONCHIP_FIFO_MEM_CORE_EOP);
		FUNC0(sc->res[0], A_ONCHIP_FIFO_MEM_CORE_DATA, word);
	}

	if (len & 2) {
		buf = (buf << 16) | *(uint16_t *)addr;
		got_bits += 16;
		addr += 2;
		len -= 2;
	}

	if (len & 1) {
		buf = (buf << 8) | *(uint8_t *)addr;
		got_bits += 8;
		addr += 1;
		len -= 1;
	}

	if (got_bits >= 32) {
		got_bits -= 32;
		word = (uint32_t)((buf >> got_bits) & 0xffffffff);

		FUNC1(sc);
		if (len == 0 && got_bits == 0 &&
		    (desc->control & CONTROL_GEN_EOP) != 0)
			FUNC2(sc, A_ONCHIP_FIFO_MEM_CORE_METADATA,
			    A_ONCHIP_FIFO_MEM_CORE_EOP);
		FUNC0(sc->res[0], A_ONCHIP_FIFO_MEM_CORE_DATA, word);
	}

	if (got_bits) {
		missing = 32 - got_bits;
		got_bits /= 8;

		FUNC1(sc);
		reg = A_ONCHIP_FIFO_MEM_CORE_EOP |
		    ((4 - got_bits) << A_ONCHIP_FIFO_MEM_CORE_EMPTY_SHIFT);
		FUNC2(sc, A_ONCHIP_FIFO_MEM_CORE_METADATA, reg);
		word = (uint32_t)((buf << missing) & 0xffffffff);
		FUNC0(sc->res[0], A_ONCHIP_FIFO_MEM_CORE_DATA, word);
	}

	return (desc->len);
}