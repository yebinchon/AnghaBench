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
typedef  int uint32_t ;
struct uftdi_softc {int sc_bcdDevice; } ;
struct uftdi_eeio {int dummy; } ;
struct uftdi_bitmode {int /*<<< orphan*/  iomask; int /*<<< orphan*/  mode; } ;
struct ucom_softc {struct uftdi_softc* sc_parent; } ;
struct thread {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EIO ; 
 int ENOIOCTL ; 
 int /*<<< orphan*/  FTDI_SIO_RESET_PURGE_RX ; 
 int /*<<< orphan*/  FTDI_SIO_RESET_PURGE_TX ; 
 int /*<<< orphan*/  FTDI_SIO_RESET_SIO ; 
#define  UFTDIIOC_ERASE_EEPROM 140 
#define  UFTDIIOC_GET_BITMODE 139 
#define  UFTDIIOC_GET_HWREV 138 
#define  UFTDIIOC_GET_LATENCY 137 
#define  UFTDIIOC_READ_EEPROM 136 
#define  UFTDIIOC_RESET_IO 135 
#define  UFTDIIOC_RESET_RX 134 
#define  UFTDIIOC_RESET_TX 133 
#define  UFTDIIOC_SET_BITMODE 132 
#define  UFTDIIOC_SET_ERROR_CHAR 131 
#define  UFTDIIOC_SET_EVENT_CHAR 130 
#define  UFTDIIOC_SET_LATENCY 129 
#define  UFTDIIOC_WRITE_EEPROM 128 
 int USB_ERR_NORMAL_COMPLETION ; 
 int FUNC0 (struct ucom_softc*,int) ; 
 int FUNC1 (struct ucom_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ucom_softc*,int*) ; 
 int FUNC3 (struct ucom_softc*,struct uftdi_eeio*) ; 
 int FUNC4 (struct ucom_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ucom_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ucom_softc*,int) ; 
 int FUNC7 (struct ucom_softc*,int) ; 
 int FUNC8 (struct ucom_softc*,int) ; 
 int FUNC9 (struct ucom_softc*,struct uftdi_eeio*) ; 

__attribute__((used)) static int
FUNC10(struct ucom_softc *ucom, uint32_t cmd, caddr_t data,
    int flag, struct thread *td)
{
	struct uftdi_softc *sc = ucom->sc_parent;
	int err;
	struct uftdi_bitmode * mode;

	switch (cmd) {
	case UFTDIIOC_RESET_IO:
	case UFTDIIOC_RESET_RX:
	case UFTDIIOC_RESET_TX:
		err = FUNC4(ucom, 
		    cmd == UFTDIIOC_RESET_IO ? FTDI_SIO_RESET_SIO :
		    (cmd == UFTDIIOC_RESET_RX ? FTDI_SIO_RESET_PURGE_RX :
		    FTDI_SIO_RESET_PURGE_TX));
		break;
	case UFTDIIOC_SET_BITMODE:
		mode = (struct uftdi_bitmode *)data;
		err = FUNC5(ucom, mode->mode, mode->iomask);
		break;
	case UFTDIIOC_GET_BITMODE:
		mode = (struct uftdi_bitmode *)data;
		err = FUNC1(ucom, &mode->mode, &mode->iomask);
		break;
	case UFTDIIOC_SET_LATENCY:
		err = FUNC8(ucom, *((int *)data));
		break;
	case UFTDIIOC_GET_LATENCY:
		err = FUNC2(ucom, (int *)data);
		break;
	case UFTDIIOC_SET_ERROR_CHAR:
		err = FUNC6(ucom, *(int *)data);
		break;
	case UFTDIIOC_SET_EVENT_CHAR:
		err = FUNC7(ucom, *(int *)data);
		break;
	case UFTDIIOC_GET_HWREV:
		*(int *)data = sc->sc_bcdDevice;
		err = 0;
		break;
	case UFTDIIOC_READ_EEPROM:
		err = FUNC3(ucom, (struct uftdi_eeio *)data);
		break;
	case UFTDIIOC_WRITE_EEPROM:
		err = FUNC9(ucom, (struct uftdi_eeio *)data);
		break;
	case UFTDIIOC_ERASE_EEPROM:
		err = FUNC0(ucom, *(int *)data);
		break;
	default:
		return (ENOIOCTL);
	}
	if (err != USB_ERR_NORMAL_COMPLETION)
		return (EIO);
	return (0);
}