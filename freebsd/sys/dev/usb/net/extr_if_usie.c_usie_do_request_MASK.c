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
struct usie_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_udev; } ;
struct usb_device_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct usie_softc *sc, struct usb_device_request *req,
    void *data)
{
	int err = 0;
	int ntries;

	FUNC2(&sc->sc_mtx, MA_OWNED);

	for (ntries = 0; ntries != 10; ntries++) {
		err = FUNC4(sc->sc_udev,
		    &sc->sc_mtx, req, data);
		if (err == 0)
			break;

		FUNC0("Control request failed: %s %d/10\n",
		    FUNC5(err), ntries);

		FUNC3(&sc->sc_mtx, FUNC1(10));
	}
	return (err);
}