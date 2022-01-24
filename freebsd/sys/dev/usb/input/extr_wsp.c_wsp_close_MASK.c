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
struct wsp_softc {int dummy; } ;
struct usb_fifo {int dummy; } ;

/* Variables and functions */
 int FREAD ; 
 int /*<<< orphan*/  FUNC0 (struct usb_fifo*) ; 
 struct wsp_softc* FUNC1 (struct usb_fifo*) ; 
 int /*<<< orphan*/  FUNC2 (struct wsp_softc*) ; 

__attribute__((used)) static void
FUNC3(struct usb_fifo *fifo, int fflags)
{
	if (fflags & FREAD) {
		struct wsp_softc *sc = FUNC1(fifo);

		FUNC2(sc);
		FUNC0(fifo);
	}
}