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
struct sc_info {int /*<<< orphan*/  dmac_reg; int /*<<< orphan*/  dmac_rid; int /*<<< orphan*/  dmac_type; int /*<<< orphan*/  dmaa_reg; int /*<<< orphan*/  dmaa_rid; int /*<<< orphan*/  dmaa_type; int /*<<< orphan*/  enh_reg; int /*<<< orphan*/  enh_rid; int /*<<< orphan*/  enh_type; int /*<<< orphan*/  irq; int /*<<< orphan*/  irqid; int /*<<< orphan*/  ih; int /*<<< orphan*/  parent_dmat; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct sc_info*,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev) {
	struct sc_info	*sc;
	int		r;

	r = FUNC5(dev);
	if (r) return r;

	sc = FUNC4(dev);
	FUNC6(sc);
	FUNC7(sc, 3);

	FUNC0(sc->parent_dmat);
	FUNC2(dev, sc->irq, sc->ih);
	FUNC1(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
	FUNC1(dev, sc->enh_type, sc->enh_rid, sc->enh_reg);
	FUNC1(dev, sc->dmaa_type, sc->dmaa_rid, sc->dmaa_reg);
	FUNC1(dev, sc->dmac_type, sc->dmac_rid, sc->dmac_reg);

	FUNC3(sc, M_DEVBUF);

	return 0;
}