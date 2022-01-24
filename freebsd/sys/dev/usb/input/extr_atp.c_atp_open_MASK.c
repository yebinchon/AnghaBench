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
struct usb_fifo {int dummy; } ;
struct atp_softc {int sc_fflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATP_FIFO_BUF_SIZE ; 
 int /*<<< orphan*/  ATP_FIFO_QUEUE_MAXLEN ; 
 int EBUSY ; 
 int ENOMEM ; 
 int FREAD ; 
 int FWRITE ; 
 int FUNC0 (struct atp_softc*) ; 
 scalar_t__ FUNC1 (struct usb_fifo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atp_softc* FUNC2 (struct usb_fifo*) ; 

__attribute__((used)) static int
FUNC3(struct usb_fifo *fifo, int fflags)
{
	struct atp_softc *sc = FUNC2(fifo);

	/* check for duplicate open, should not happen */
	if (sc->sc_fflags & fflags)
		return (EBUSY);

	/* check for first open */
	if (sc->sc_fflags == 0) {
		int rc;
		if ((rc = FUNC0(sc)) != 0)
			return (rc);
	}

	if (fflags & FREAD) {
		if (FUNC1(fifo,
		    ATP_FIFO_BUF_SIZE, ATP_FIFO_QUEUE_MAXLEN)) {
			return (ENOMEM);
		}
	}

	sc->sc_fflags |= (fflags & (FREAD | FWRITE));
	return (0);
}