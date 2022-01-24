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
struct uep_softc {int state; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int FREAD ; 
 int UEP_ENABLED ; 
 int /*<<< orphan*/  UEP_FIFO_BUF_SIZE ; 
 int /*<<< orphan*/  UEP_FIFO_QUEUE_MAXLEN ; 
 scalar_t__ FUNC0 (struct usb_fifo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uep_softc* FUNC1 (struct usb_fifo*) ; 

__attribute__((used)) static int
FUNC2(struct usb_fifo *fifo, int fflags)
{
	if (fflags & FREAD) {
		struct uep_softc *sc = FUNC1(fifo);

		if (sc->state & UEP_ENABLED)
			return (EBUSY);
		if (FUNC0(fifo, UEP_FIFO_BUF_SIZE,
		    UEP_FIFO_QUEUE_MAXLEN))
			return (ENOMEM);

		sc->state |= UEP_ENABLED;
	}

	return (0);
}