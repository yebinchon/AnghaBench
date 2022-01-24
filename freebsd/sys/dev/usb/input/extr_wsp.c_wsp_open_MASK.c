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
struct wsp_softc {int sc_state; } ;
struct usb_fifo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int FREAD ; 
 int WSP_ENABLED ; 
 int /*<<< orphan*/  WSP_FIFO_BUF_SIZE ; 
 int /*<<< orphan*/  WSP_FIFO_QUEUE_MAXLEN ; 
 int /*<<< orphan*/  WSP_LLEVEL_INFO ; 
 scalar_t__ FUNC1 (struct usb_fifo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_fifo*) ; 
 struct wsp_softc* FUNC3 (struct usb_fifo*) ; 
 int FUNC4 (struct wsp_softc*) ; 

__attribute__((used)) static int
FUNC5(struct usb_fifo *fifo, int fflags)
{
	FUNC0(WSP_LLEVEL_INFO, "\n");

	if (fflags & FREAD) {
		struct wsp_softc *sc = FUNC3(fifo);
		int rc;

		if (sc->sc_state & WSP_ENABLED)
			return (EBUSY);

		if (FUNC1(fifo,
		    WSP_FIFO_BUF_SIZE, WSP_FIFO_QUEUE_MAXLEN)) {
			return (ENOMEM);
		}
		rc = FUNC4(sc);
		if (rc != 0) {
			FUNC2(fifo);
			return (rc);
		}
	}
	return (0);
}