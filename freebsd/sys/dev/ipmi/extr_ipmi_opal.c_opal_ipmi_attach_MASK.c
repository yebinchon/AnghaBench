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
struct TYPE_2__ {int ipmi_driver_requests_polled; int /*<<< orphan*/  ipmi_dev; int /*<<< orphan*/  ipmi_enqueue_request; int /*<<< orphan*/  ipmi_driver_request; int /*<<< orphan*/  ipmi_startup; } ;
struct opal_ipmi_softc {int /*<<< orphan*/  sc_msg; TYPE_1__ ipmi; int /*<<< orphan*/  sc_interface; } ;
struct opal_ipmi_msg {int dummy; } ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ IPMI_MAX_RX ; 
 int /*<<< orphan*/  M_IPMI ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 struct opal_ipmi_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipmi_polled_enqueue_request ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opal_ipmi_driver_request ; 
 int /*<<< orphan*/  opal_ipmi_startup ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct opal_ipmi_softc *sc;

	sc = FUNC1(dev);

	if (FUNC0(FUNC5(dev), "ibm,ipmi-interface-id",
	    (pcell_t*)&sc->sc_interface, sizeof(sc->sc_interface)) < 0) {
		FUNC2(dev, "Missing interface id\n");
		return (ENXIO);
	}
	sc->ipmi.ipmi_startup = opal_ipmi_startup;
	sc->ipmi.ipmi_driver_request = opal_ipmi_driver_request;
	sc->ipmi.ipmi_enqueue_request = ipmi_polled_enqueue_request;
	sc->ipmi.ipmi_driver_requests_polled = 1;
	sc->ipmi.ipmi_dev = dev;

	sc->sc_msg = FUNC4(sizeof(struct opal_ipmi_msg) + IPMI_MAX_RX, M_IPMI,
	    M_WAITOK | M_ZERO);

	return (FUNC3(dev));
}