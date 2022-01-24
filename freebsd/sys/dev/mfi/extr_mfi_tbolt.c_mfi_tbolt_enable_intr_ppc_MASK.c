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
struct mfi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFI_FUSION_ENABLE_INTERRUPT_MASK ; 
 int /*<<< orphan*/  MFI_OMSK ; 
 int /*<<< orphan*/  FUNC0 (struct mfi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mfi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct mfi_softc *sc)
{
	FUNC1(sc, MFI_OMSK, ~MFI_FUSION_ENABLE_INTERRUPT_MASK);
	FUNC0(sc, MFI_OMSK);
}