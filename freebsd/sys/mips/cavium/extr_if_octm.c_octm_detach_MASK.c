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
struct octm_softc {int /*<<< orphan*/  sc_intr; int /*<<< orphan*/  sc_port; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int cvmx_mgmt_port_result_t ;

/* Variables and functions */
#define  CVMX_MGMT_PORT_INIT_ERROR 131 
#define  CVMX_MGMT_PORT_INVALID_PARAM 130 
#define  CVMX_MGMT_PORT_NO_MEMORY 129 
#define  CVMX_MGMT_PORT_SUCCESS 128 
 int EIO ; 
 int ENOBUFS ; 
 int ENXIO ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct octm_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct octm_softc *sc;
	cvmx_mgmt_port_result_t result;

	sc = FUNC2(dev);

	result = FUNC1(sc->sc_port);
	switch (result) {
	case CVMX_MGMT_PORT_SUCCESS:
		break;
	case CVMX_MGMT_PORT_NO_MEMORY:
		return (ENOBUFS);
	case CVMX_MGMT_PORT_INVALID_PARAM:
		return (ENXIO);
	case CVMX_MGMT_PORT_INIT_ERROR:
		return (EIO);
	}

	FUNC0(dev, SYS_RES_IRQ, 0, sc->sc_intr);
	/* XXX Incomplete.  */

	return (0);
}