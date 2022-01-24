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
struct atiixp_info {scalar_t__ registered_channels; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * sgd_dmat; int /*<<< orphan*/ * sgd_table; int /*<<< orphan*/  sgd_dmamap; scalar_t__ sgd_addr; int /*<<< orphan*/ * parent_dmat; int /*<<< orphan*/ * irq; int /*<<< orphan*/  irqid; int /*<<< orphan*/  dev; int /*<<< orphan*/ * reg; int /*<<< orphan*/  regid; int /*<<< orphan*/  regtype; int /*<<< orphan*/ * ih; int /*<<< orphan*/ * codec; int /*<<< orphan*/  poll_timer; scalar_t__ polling; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct atiixp_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct atiixp_info *sc)
{
	if (sc == NULL)
		return;
	if (sc->registered_channels != 0) {
		FUNC1(sc);
		sc->polling = 0;
		FUNC9(&sc->poll_timer);
		FUNC2(sc);
		FUNC8(&sc->poll_timer);
	}
	if (sc->codec) {
		FUNC0(sc->codec);
		sc->codec = NULL;
	}
	if (sc->ih) {
		FUNC7(sc->dev, sc->irq, sc->ih);
		sc->ih = NULL;
	}
	if (sc->reg) {
		FUNC6(sc->dev, sc->regtype, sc->regid, sc->reg);
		sc->reg = NULL;
	}
	if (sc->irq) {
		FUNC6(sc->dev, SYS_RES_IRQ, sc->irqid, sc->irq);
		sc->irq = NULL;
	}
	if (sc->parent_dmat) {
		FUNC3(sc->parent_dmat);
		sc->parent_dmat = NULL;
	}
	if (sc->sgd_addr) {
		FUNC4(sc->sgd_dmat, sc->sgd_dmamap);
		sc->sgd_addr = 0;
	}
	if (sc->sgd_table) {
		FUNC5(sc->sgd_dmat, sc->sgd_table, sc->sgd_dmamap);
		sc->sgd_table = NULL;
	}
	if (sc->sgd_dmat) {
		FUNC3(sc->sgd_dmat);
		sc->sgd_dmat = NULL;
	}
	if (sc->lock) {
		FUNC11(sc->lock);
		sc->lock = NULL;
	}
	FUNC10(sc, M_DEVBUF);
}