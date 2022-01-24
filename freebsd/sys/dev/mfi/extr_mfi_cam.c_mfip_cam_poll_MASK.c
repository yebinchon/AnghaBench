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
struct mfip_softc {struct mfi_softc* mfi_sc; } ;
struct mfi_softc {int /*<<< orphan*/  (* mfi_intr_ptr ) (struct mfi_softc*) ;} ;
struct cam_sim {int dummy; } ;

/* Variables and functions */
 struct mfip_softc* FUNC0 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC1 (struct mfi_softc*) ; 

__attribute__((used)) static void
FUNC2(struct cam_sim *sim)
{
	struct mfip_softc *sc = FUNC0(sim);
	struct mfi_softc *mfisc = sc->mfi_sc;

	mfisc->mfi_intr_ptr(mfisc);
}