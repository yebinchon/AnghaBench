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
struct mfi_softc {int mfi_flags; } ;

/* Variables and functions */
 int MFI_FLAGS_TBOLT ; 
 int MFI_IDB ; 
 int /*<<< orphan*/  MFI_STOP_ADP ; 
 int /*<<< orphan*/  FUNC0 (struct mfi_softc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct mfi_softc *sc)
{
	if (sc->mfi_flags & MFI_FLAGS_TBOLT)
		FUNC0(sc, 0x00, MFI_STOP_ADP);
	else
		FUNC0(sc, MFI_IDB, MFI_STOP_ADP);
}