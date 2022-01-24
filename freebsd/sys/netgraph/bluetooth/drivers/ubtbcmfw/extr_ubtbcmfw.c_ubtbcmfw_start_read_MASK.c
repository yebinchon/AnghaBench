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
struct ubtbcmfw_softc {int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 size_t UBTBCMFW_INTR_DT_RD ; 
 struct ubtbcmfw_softc* FUNC0 (struct usb_fifo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct usb_fifo *fifo)
{
	struct ubtbcmfw_softc	*sc = FUNC0(fifo);

	FUNC1(sc->sc_xfer[UBTBCMFW_INTR_DT_RD]);
}