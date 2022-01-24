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
struct rtwn_usb_softc {int /*<<< orphan*/  uc_rx_inactive; int /*<<< orphan*/  uc_rx_active; scalar_t__ uc_rx_off; scalar_t__ uc_rx_stat_len; int /*<<< orphan*/  uc_rx; } ;
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTWN_USB_RX_LIST_COUNT ; 
 struct rtwn_usb_softc* FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct rtwn_softc *sc)
{
	struct rtwn_usb_softc *uc = FUNC0(sc);

	FUNC2(sc, uc->uc_rx, RTWN_USB_RX_LIST_COUNT);

	uc->uc_rx_stat_len = 0;
	uc->uc_rx_off = 0;

	FUNC1(&uc->uc_rx_active);
	FUNC1(&uc->uc_rx_inactive);
}