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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {int data_error; } ;
struct ustorage_fs_softc {int /*<<< orphan*/  sc_last_lun; int /*<<< orphan*/  sc_mtx; TYPE_1__ sc_transfer; } ;
struct usb_device_request {scalar_t__ bmRequestType; scalar_t__ bRequest; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ UR_BBB_GET_MAX_LUN ; 
 scalar_t__ UR_BBB_RESET ; 
 int /*<<< orphan*/  USTORAGE_FS_T_BBB_COMMAND ; 
 scalar_t__ UT_READ_CLASS_INTERFACE ; 
 scalar_t__ UT_WRITE_CLASS_INTERFACE ; 
 struct ustorage_fs_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ustorage_fs_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ustorage_fs_softc*) ; 

__attribute__((used)) static int
FUNC5(device_t dev,
    const void *preq, void **pptr, uint16_t *plen,
    uint16_t offset, uint8_t *pstate)
{
	struct ustorage_fs_softc *sc = FUNC0(dev);
	const struct usb_device_request *req = preq;
	uint8_t is_complete = *pstate;

	if (!is_complete) {
		if ((req->bmRequestType == UT_WRITE_CLASS_INTERFACE) &&
		    (req->bRequest == UR_BBB_RESET)) {
			*plen = 0;
			FUNC1(&sc->sc_mtx);
			FUNC4(sc);
			sc->sc_transfer.data_error = 1;
			FUNC3(sc,
			    USTORAGE_FS_T_BBB_COMMAND);
			FUNC2(&sc->sc_mtx);
			return (0);
		} else if ((req->bmRequestType == UT_READ_CLASS_INTERFACE) &&
			   (req->bRequest == UR_BBB_GET_MAX_LUN)) {
			if (offset == 0) {
				*plen = 1;
				*pptr = &sc->sc_last_lun;
			} else {
				*plen = 0;
			}
			return (0);
		}
	}
	return (ENXIO);			/* use builtin handler */
}