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
struct lsi64854_softc {int dummy; } ;
struct le_dma_softc {struct lsi64854_softc* sc_dma; } ;
struct lance_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int E_TP_AUI ; 
 int FUNC1 (struct lsi64854_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct lsi64854_softc*,int) ; 

__attribute__((used)) static void
FUNC3(struct lance_softc *sc)
{
	struct lsi64854_softc *dma = ((struct le_dma_softc *)sc)->sc_dma;

	FUNC2(dma, FUNC1(dma) | E_TP_AUI);
	FUNC0(20000);	/* We must not touch the LANCE chip for 20ms. */
}