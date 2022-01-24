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
typedef  int uint8_t ;
struct uio {size_t uio_resid; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {size_t packetsize; } ;
struct adb_mouse_softc {size_t packet_read_len; int xdelta; int ydelta; int buttons; int last_buttons; unsigned int* packet; int /*<<< orphan*/  sc_mtx; TYPE_1__ mode; int /*<<< orphan*/  sc_cv; } ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 struct adb_mouse_softc* FUNC0 (struct cdev*) ; 
 int EIO ; 
 int EWOULDBLOCK ; 
 int O_NONBLOCK ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,size_t,struct uio*) ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, struct uio *uio, int flag)
{
	struct adb_mouse_softc *sc;
	size_t len;
	int8_t outpacket[8];
	int error;

	sc = FUNC0(dev);
	if (sc == NULL)
		return (EIO);

	if (uio->uio_resid <= 0)
		return (0);

	FUNC3(&sc->sc_mtx);

	if (!sc->packet_read_len) {
		if (sc->xdelta == 0 && sc->ydelta == 0 && 
		   sc->buttons == sc->last_buttons) {

			if (flag & O_NONBLOCK) {
				FUNC4(&sc->sc_mtx);
				return EWOULDBLOCK;
			}

	
			/* Otherwise, block on new data */
			error = FUNC1(&sc->sc_cv, &sc->sc_mtx);
			if (error) {
				FUNC4(&sc->sc_mtx);
				return (error);
			}
		}

		sc->packet[0] = 1U << 7;
		sc->packet[0] |= (!(sc->buttons & 1)) << 2;
		sc->packet[0] |= (!(sc->buttons & 4)) << 1;
		sc->packet[0] |= (!(sc->buttons & 2));

		if (sc->xdelta > 127) {
			sc->packet[1] = 127;
			sc->packet[3] = sc->xdelta - 127;
		} else if (sc->xdelta < -127) {
			sc->packet[1] = -127;
			sc->packet[3] = sc->xdelta + 127;
		} else {
			sc->packet[1] = sc->xdelta;
			sc->packet[3] = 0;
		}

		if (sc->ydelta > 127) {
			sc->packet[2] = 127;
			sc->packet[4] = sc->ydelta - 127;
		} else if (sc->ydelta < -127) {
			sc->packet[2] = -127;
			sc->packet[4] = sc->ydelta + 127;
		} else {
			sc->packet[2] = sc->ydelta;
			sc->packet[4] = 0;
		}

		/* No Z movement */
		sc->packet[5] = 0;
		sc->packet[6] = 0; 

		sc->packet[7] = ~((uint8_t)(sc->buttons >> 3)) & 0x7f;


		sc->last_buttons = sc->buttons;
		sc->xdelta = 0;
		sc->ydelta = 0;

		sc->packet_read_len = sc->mode.packetsize;
	}

	len = (sc->packet_read_len > uio->uio_resid) ? 
		uio->uio_resid : sc->packet_read_len;

	FUNC2(outpacket,sc->packet + 
		(sc->mode.packetsize - sc->packet_read_len),len);
	sc->packet_read_len -= len;

	FUNC4(&sc->sc_mtx);

	error = FUNC5(outpacket,len,uio);

	return (error);
}