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
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int dummy; } ;
struct bcm_mips_softc {TYPE_1__* isrcs; } ;
struct bcm_mips_intr_map_data {size_t ivec; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct intr_irqsrc isrc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int EINVAL ; 
 int ENOTSUP ; 
 scalar_t__ INTR_MAP_DATA_BCM_MIPS ; 
 struct bcm_mips_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, struct intr_map_data *d,
    struct intr_irqsrc **isrcp)
{
	struct bcm_mips_softc		*sc;
	struct bcm_mips_intr_map_data	*data;

	sc = FUNC1(dev);

	if (d->type != INTR_MAP_DATA_BCM_MIPS) {
		FUNC0(dev, "type=%d", d->type);
		return (ENOTSUP);
	}

	data = (struct bcm_mips_intr_map_data *)d;
	FUNC0(dev, "type=%d, ivec=%u", d->type, data->ivec);
	if (data->ivec < 0 || data->ivec >= FUNC2(sc->isrcs))
		return (EINVAL);

	*isrcp = &sc->isrcs[data->ivec].isrc;
	return (0);
}