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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_long ;
struct usb_gen_descriptor {int ugd_report_type; int /*<<< orphan*/  ugd_maxlen; int /*<<< orphan*/ * ugd_data; int /*<<< orphan*/  ugd_actlen; } ;
struct usb_fifo {int dummy; } ;
struct uhid_snes_softc {int /*<<< orphan*/  sc_fid; int /*<<< orphan*/  sc_fsize; int /*<<< orphan*/  sc_oid; int /*<<< orphan*/  sc_osize; int /*<<< orphan*/  sc_iid; int /*<<< orphan*/  sc_isize; int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/  sc_fflags; int /*<<< orphan*/  sc_repdesc_ptr; int /*<<< orphan*/  sc_repdesc_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int FREAD ; 
 int FWRITE ; 
#define  UHID_FEATURE_REPORT 135 
 int /*<<< orphan*/  UHID_FLAG_IMMED ; 
#define  UHID_INPUT_REPORT 134 
#define  UHID_OUTPUT_REPORT 133 
#define  USB_GET_REPORT 132 
#define  USB_GET_REPORT_DESC 131 
#define  USB_GET_REPORT_ID 130 
#define  USB_SET_IMMED 129 
#define  USB_SET_REPORT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct uhid_snes_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct uhid_snes_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct uhid_snes_softc* FUNC7 (struct usb_fifo*) ; 

__attribute__((used)) static int
FUNC8(struct usb_fifo *fifo, u_long cmd, void *data, int fflags)
{
	struct uhid_snes_softc *sc = FUNC7(fifo);
	struct usb_gen_descriptor *ugd;
	uint32_t size;
	int error = 0;
	uint8_t id;

	switch (cmd) {
	case USB_GET_REPORT_DESC:
		ugd = data;
		if (sc->sc_repdesc_size > ugd->ugd_maxlen) {
			size = ugd->ugd_maxlen;
		} else {
			size = sc->sc_repdesc_size;
		}

		ugd->ugd_actlen = size;
		if (ugd->ugd_data == NULL)
			break; /*desciptor length only*/
		error = FUNC1(sc->sc_repdesc_ptr, ugd->ugd_data, size);
		break;

	case USB_SET_IMMED:
		if (!(fflags & FREAD)) {
			error = EPERM;
			break;
		}

		if (*(int *)data) {
			/* do a test read */
			error = FUNC5(sc, UHID_INPUT_REPORT,
			    sc->sc_iid, NULL, NULL, sc->sc_isize);
			if (error) {
				break;
			}
			FUNC3(&sc->sc_mutex);
			sc->sc_fflags |= UHID_FLAG_IMMED;
			FUNC4(&sc->sc_mutex);
		} else {
			FUNC3(&sc->sc_mutex);
			sc->sc_fflags &= ~UHID_FLAG_IMMED;
			FUNC4(&sc->sc_mutex);
		}
		break;

	case USB_GET_REPORT:
		if (!(fflags & FREAD)) {
			error = EPERM;
			break;
		}
		ugd = data;
		switch (ugd->ugd_report_type) {
		case UHID_INPUT_REPORT:
			size = sc->sc_isize;
			id = sc->sc_iid;
			break;
		case UHID_OUTPUT_REPORT:
			size = sc->sc_osize;
			id = sc->sc_oid;
			break;
		case UHID_FEATURE_REPORT:
			size = sc->sc_fsize;
			id = sc->sc_fid;
			break;
		default:
			return (EINVAL);
		}
		if (id != 0)
			FUNC0(ugd->ugd_data, &id, 1);
		error = FUNC5(sc, ugd->ugd_report_type, id,
		    NULL, ugd->ugd_data, FUNC2(ugd->ugd_maxlen, size));
		break;

	case USB_SET_REPORT:
		if (!(fflags & FWRITE)) {
			error = EPERM;
			break;
		}
		ugd = data;
		switch (ugd->ugd_report_type) {
		case UHID_INPUT_REPORT:
			size = sc->sc_isize;
			id = sc->sc_iid;
			break;
		case UHID_OUTPUT_REPORT:
			size = sc->sc_osize;
			id = sc->sc_oid;
			break;
		case UHID_FEATURE_REPORT:
			size = sc->sc_fsize;
			id = sc->sc_fid;
			break;
		default:
			return (EINVAL);
		}
		if (id != 0)
			FUNC0(ugd->ugd_data, &id, 1);
		error = FUNC6(sc, ugd->ugd_report_type, id,
		    NULL, ugd->ugd_data, FUNC2(ugd->ugd_maxlen, size));
		break;

	case USB_GET_REPORT_ID:
		/* XXX: we only support reportid 0? */
		*(int *)data = 0;
		break;

	default:
		error = EINVAL;
		break;
	}
	return (error);
}