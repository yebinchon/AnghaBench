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
typedef  int /*<<< orphan*/  u_int ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct resource* irq; } ;
typedef  TYPE_1__ atkbdc_softc_t ;

/* Variables and functions */
 int KBDC_RID_KBD ; 
 int SYS_RES_IRQ ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

struct resource *
FUNC2(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	atkbdc_softc_t	*sc;
	
	sc = *(atkbdc_softc_t **)FUNC1(dev);
	if (type == SYS_RES_IRQ && *rid == KBDC_RID_KBD && sc->irq != NULL)
		return (sc->irq);
	return (FUNC0(dev, child, type, rid, start,
	    end, count, flags));
}