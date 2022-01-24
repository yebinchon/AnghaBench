#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmd_softc {TYPE_1__* vmd_irq; } ;
struct vmd_irq_handler {void* vmd_arg; int /*<<< orphan*/  vmd_rid; int /*<<< orphan*/ * vmd_intr; int /*<<< orphan*/  vmd_child; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  vmd_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct vmd_irq_handler*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void**) ; 
 struct vmd_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct vmd_irq_handler* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 int /*<<< orphan*/  vmd_link ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, struct resource *irq,
    int flags, driver_filter_t *filter, driver_intr_t *intr, void *arg,
    void **cookiep)
{
	struct vmd_irq_handler *elm;
	struct vmd_softc *sc;
	int i;

	sc = FUNC2(dev);

	/*
	 * There appears to be no steering of VMD interrupts from device
	 * to VMD interrupt
	 */

	i = 0;
	elm = FUNC3(sizeof(*elm), M_DEVBUF, M_NOWAIT|M_ZERO);
	elm->vmd_child = child;
	elm->vmd_intr = intr;
	elm->vmd_rid = FUNC4(irq);
	elm->vmd_arg = arg;
	FUNC0(&sc->vmd_irq[i].vmd_list, elm, vmd_link);

	return (FUNC1(dev, child, irq, flags, filter, intr,
	    arg, cookiep));
}