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
struct bge_softc {scalar_t__ bge_asicrev; int bge_flags; } ;

/* Variables and functions */
 scalar_t__ BGE_ASICREV_BCM5906 ; 
 int BGE_FLAG_MBOX_REORDER ; 
 scalar_t__ BGE_LPMBX_IRQ0_HI ; 
 scalar_t__ BGE_MBX_IRQ0_HI ; 
 int /*<<< orphan*/  FUNC0 (struct bge_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct bge_softc *sc, int off, int val)
{
	if (sc->bge_asicrev == BGE_ASICREV_BCM5906)
		off += BGE_LPMBX_IRQ0_HI - BGE_MBX_IRQ0_HI;

	FUNC1(sc, off, val);
	if ((sc->bge_flags & BGE_FLAG_MBOX_REORDER) != 0)
		FUNC0(sc, off);
}