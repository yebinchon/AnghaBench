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
struct mfi_softc {int mfi_flags; } ;
typedef  int bus_addr_t ;

/* Variables and functions */
 int MFI_FLAGS_SKINNY ; 
 int /*<<< orphan*/  MFI_IQP ; 
 int /*<<< orphan*/  MFI_IQPH ; 
 int /*<<< orphan*/  MFI_IQPL ; 
 int /*<<< orphan*/  FUNC0 (struct mfi_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct mfi_softc *sc, bus_addr_t bus_add, uint32_t frame_cnt)
{
	if (sc->mfi_flags & MFI_FLAGS_SKINNY) {
	    FUNC0(sc, MFI_IQPL, (bus_add | frame_cnt <<1)|1 );
	    FUNC0(sc, MFI_IQPH, 0x00000000);
	} else {
	    FUNC0(sc, MFI_IQP, (bus_add | frame_cnt <<1)|1 );
	}
}