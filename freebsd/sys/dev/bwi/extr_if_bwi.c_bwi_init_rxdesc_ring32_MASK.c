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
struct bwi_desc32 {int dummy; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int BWI_RX32_CTRL ; 
 int /*<<< orphan*/  BWI_RX32_CTRL_HDRSZ_MASK ; 
 int BWI_RX32_INDEX ; 
 int BWI_RX32_RINGINFO ; 
 int /*<<< orphan*/  BWI_TXRX32_CTRL_ADDRHI_MASK ; 
 int BWI_TXRX32_CTRL_ENABLE ; 
 int /*<<< orphan*/  BWI_TXRX32_RINGINFO_ADDR_MASK ; 
 int /*<<< orphan*/  BWI_TXRX32_RINGINFO_FUNC_MASK ; 
 int BWI_TXRX32_RINGINFO_FUNC_TXRX ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bwi_softc *sc, uint32_t ctrl_base,
		       bus_addr_t paddr, int hdr_size, int ndesc)
{
	uint32_t val, addr_hi, addr_lo;

	addr_lo = FUNC2(paddr, BWI_TXRX32_RINGINFO_ADDR_MASK);
	addr_hi = FUNC2(paddr, BWI_TXRX32_RINGINFO_FUNC_MASK);

	val = FUNC1(addr_lo, BWI_TXRX32_RINGINFO_ADDR_MASK) |
	      FUNC1(BWI_TXRX32_RINGINFO_FUNC_TXRX,
	      		BWI_TXRX32_RINGINFO_FUNC_MASK);
	FUNC0(sc, ctrl_base + BWI_RX32_RINGINFO, val);

	val = FUNC1(hdr_size, BWI_RX32_CTRL_HDRSZ_MASK) |
	      FUNC1(addr_hi, BWI_TXRX32_CTRL_ADDRHI_MASK) |
	      BWI_TXRX32_CTRL_ENABLE;
	FUNC0(sc, ctrl_base + BWI_RX32_CTRL, val);

	FUNC0(sc, ctrl_base + BWI_RX32_INDEX,
		    (ndesc - 1) * sizeof(struct bwi_desc32));
}