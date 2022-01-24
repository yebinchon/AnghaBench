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
typedef  int /*<<< orphan*/  usb_error_t ;
struct usb_xfer {int dummy; } ;
struct rsu_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSU_BULK_TX_VI_VO ; 
 int /*<<< orphan*/  FUNC0 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rsu_softc*) ; 
 struct rsu_softc* FUNC2 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC3(struct usb_xfer *xfer, usb_error_t error)
{
	struct rsu_softc *sc = FUNC2(xfer);

	FUNC0(xfer, error, RSU_BULK_TX_VI_VO);

	/* This kicks the TX taskqueue */
	FUNC1(sc);
}