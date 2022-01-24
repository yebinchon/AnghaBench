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
struct exca_softc {size_t chipset; int /*<<< orphan*/  putb; int /*<<< orphan*/  getb; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int ENXIO ; 
 int EXCA_NSLOTS ; 
 int EXCA_SOCKET_SIZE ; 
 int /*<<< orphan*/ * chip_names ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct exca_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  exca_io_getb ; 
 int /*<<< orphan*/  exca_io_putb ; 
 scalar_t__ FUNC2 (struct exca_softc*) ; 

int
FUNC3(device_t dev, struct exca_softc *exca, bus_space_tag_t iot,
    bus_space_handle_t ioh)
{
	int err;
	int i;

	err = ENXIO;
	for (i = 0; i < EXCA_NSLOTS; i++)  {
		FUNC1(&exca[i], dev, iot, ioh, i * EXCA_SOCKET_SIZE);
		exca->getb = exca_io_getb;
		exca->putb = exca_io_putb;
		if (FUNC2(&exca[i])) {
			FUNC0(dev, chip_names[exca[i].chipset]);
			err = 0;
		}
	}
	return (err);
}