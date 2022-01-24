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
struct rtwn_usb_softc {int uc_rx_buf_size; int /*<<< orphan*/ * uc_rx; int /*<<< orphan*/  uc_rx_inactive; int /*<<< orphan*/  uc_rx_active; } ;
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int RTWN_USB_RXBUFSZ_UNIT ; 
 int RTWN_USB_RX_LIST_COUNT ; 
 struct rtwn_usb_softc* FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int FUNC3 (struct rtwn_softc*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC4(struct rtwn_softc *sc)
{
	struct rtwn_usb_softc *uc = FUNC0(sc);
	int error, i;

	error = FUNC3(sc, uc->uc_rx, RTWN_USB_RX_LIST_COUNT,
	    uc->uc_rx_buf_size * RTWN_USB_RXBUFSZ_UNIT);
	if (error != 0)
		return (error);

	FUNC1(&uc->uc_rx_active);
	FUNC1(&uc->uc_rx_inactive);

	for (i = 0; i < RTWN_USB_RX_LIST_COUNT; i++)
		FUNC2(&uc->uc_rx_inactive, &uc->uc_rx[i], next);

	return (0);
}