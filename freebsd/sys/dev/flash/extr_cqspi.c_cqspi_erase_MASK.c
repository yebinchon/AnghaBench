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
struct cqspi_softc {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_QUAD_SECTOR_ERASE ; 
 int /*<<< orphan*/  CMD_WRITE_ENABLE ; 
 int FUNC0 (struct cqspi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cqspi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cqspi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct cqspi_softc*) ; 
 struct cqspi_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, off_t offset)
{
	struct cqspi_softc *sc;
	int ret;

	sc = FUNC4(dev);

	FUNC2(sc);
	FUNC3(sc);
	ret = FUNC0(sc, CMD_WRITE_ENABLE, 0, 0);

	FUNC2(sc);
	FUNC3(sc);
	ret = FUNC1(sc, CMD_QUAD_SECTOR_ERASE, offset, 4);

	FUNC2(sc);

	return (0);
}