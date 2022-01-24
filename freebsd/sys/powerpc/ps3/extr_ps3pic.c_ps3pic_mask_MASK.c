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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int u_int ;
struct ps3pic_softc {int sc_ipi_virq; int /*<<< orphan*/ * mask_thread1; int /*<<< orphan*/ * mask_thread0; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ps3pic_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(device_t dev, u_int irq, void *priv)
{
	struct ps3pic_softc *sc;
	uint64_t ppe;

	sc = FUNC1(dev);

	/* Do not mask IPIs! */
	if (irq == sc->sc_ipi_virq)
		return;

	FUNC0(&sc->mask_thread0[0], 1UL << (63 - irq));
	FUNC0(&sc->mask_thread1[0], 1UL << (63 - irq));

	FUNC3(&ppe);
	FUNC2(ppe, 0);
	FUNC2(ppe, 1);
}