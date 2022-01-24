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
typedef  int int32_t ;

/* Variables and functions */
 int MFI_1078_RM ; 
 int MFI_FLAGS_1078 ; 
 int MFI_FLAGS_GEN2 ; 
 int MFI_FLAGS_SKINNY ; 
 int MFI_GEN2_RM ; 
 int /*<<< orphan*/  MFI_ODCR0 ; 
 int /*<<< orphan*/  MFI_OSTS ; 
 int FUNC0 (struct mfi_softc*,int /*<<< orphan*/ ) ; 
 int MFI_SKINNY_RM ; 
 int /*<<< orphan*/  FUNC1 (struct mfi_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct mfi_softc *sc)
{
	int32_t status;

	status = FUNC0(sc, MFI_OSTS);
	if (sc->mfi_flags & MFI_FLAGS_1078) {
		if (!(status & MFI_1078_RM)) {
			return 1;
		}
	}
	else if (sc->mfi_flags & MFI_FLAGS_GEN2) {
		if (!(status & MFI_GEN2_RM)) {
			return 1;
		}
	}
	else if (sc->mfi_flags & MFI_FLAGS_SKINNY) {
		if (!(status & MFI_SKINNY_RM)) {
			return 1;
		}
	}
	if (sc->mfi_flags & MFI_FLAGS_SKINNY)
		FUNC1(sc, MFI_OSTS, status);
	else
		FUNC1(sc, MFI_ODCR0, status);
	return 0;
}