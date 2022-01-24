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
struct resource_list {int dummy; } ;
struct ndis_softc {int /*<<< orphan*/  ndis_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource_list* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ndis_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct resource_list *
FUNC3(device_t dev, device_t child)
{
	struct ndis_softc       *sc;

	sc = FUNC2(dev);
	return (FUNC0(FUNC1(sc->ndis_dev), dev));
}