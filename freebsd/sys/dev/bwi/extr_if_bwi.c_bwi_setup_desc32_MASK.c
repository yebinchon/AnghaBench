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
struct bwi_softc {int dummy; } ;
struct bwi_desc32 {void* ctrl; void* addr; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_DESC32_A_ADDR_MASK ; 
 int /*<<< orphan*/  BWI_DESC32_A_FUNC_MASK ; 
 int BWI_DESC32_A_FUNC_TXRX ; 
 int /*<<< orphan*/  BWI_DESC32_C_ADDRHI_MASK ; 
 int /*<<< orphan*/  BWI_DESC32_C_BUFLEN_MASK ; 
 int BWI_DESC32_C_EOR ; 
 int BWI_DESC32_C_FRAME_END ; 
 int BWI_DESC32_C_FRAME_START ; 
 int BWI_DESC32_C_INTR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static __inline void
FUNC3(struct bwi_softc *sc, struct bwi_desc32 *desc_array,
		 int ndesc, int desc_idx, bus_addr_t paddr, int buf_len,
		 int tx)
{
	struct bwi_desc32 *desc = &desc_array[desc_idx];
	uint32_t ctrl, addr, addr_hi, addr_lo;

	addr_lo = FUNC1(paddr, BWI_DESC32_A_ADDR_MASK);
	addr_hi = FUNC1(paddr, BWI_DESC32_A_FUNC_MASK);

	addr = FUNC0(addr_lo, BWI_DESC32_A_ADDR_MASK) |
	       FUNC0(BWI_DESC32_A_FUNC_TXRX, BWI_DESC32_A_FUNC_MASK);

	ctrl = FUNC0(buf_len, BWI_DESC32_C_BUFLEN_MASK) |
	       FUNC0(addr_hi, BWI_DESC32_C_ADDRHI_MASK);
	if (desc_idx == ndesc - 1)
		ctrl |= BWI_DESC32_C_EOR;
	if (tx) {
		/* XXX */
		ctrl |= BWI_DESC32_C_FRAME_START |
			BWI_DESC32_C_FRAME_END |
			BWI_DESC32_C_INTR;
	}

	desc->addr = FUNC2(addr);
	desc->ctrl = FUNC2(ctrl);
}