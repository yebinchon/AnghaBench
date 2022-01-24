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
typedef  scalar_t__ usb_error_t ;
struct urtw_softc {int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  URTW_8225_ADDR_7_MAGIC ; 
 int /*<<< orphan*/ * urtw_8225_channel ; 
 scalar_t__ FUNC0 (struct urtw_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static usb_error_t
FUNC3(struct urtw_softc *sc, int chan)
{
	usb_error_t error;

	error = FUNC0(sc, chan);
	if (error)
		goto fail;
	FUNC1(sc, URTW_8225_ADDR_7_MAGIC, urtw_8225_channel[chan]);
	FUNC2(&sc->sc_mtx, 10);
fail:
	return (error);
}