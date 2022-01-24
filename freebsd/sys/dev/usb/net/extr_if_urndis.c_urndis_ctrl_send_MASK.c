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
typedef  int /*<<< orphan*/  uint16_t ;
struct urndis_softc {int /*<<< orphan*/  sc_ifaceno_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UCDC_SEND_ENCAPSULATED_COMMAND ; 
 int /*<<< orphan*/  UT_WRITE_CLASS_INTERFACE ; 
 int /*<<< orphan*/  FUNC1 (struct urndis_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static usb_error_t
FUNC3(struct urndis_softc *sc, void *buf, uint16_t len)
{
	usb_error_t err;

	err = FUNC1(sc, UT_WRITE_CLASS_INTERFACE,
	    UCDC_SEND_ENCAPSULATED_COMMAND, sc->sc_ifaceno_ctl, 0, buf, len);

	FUNC0("%s\n", FUNC2(err));

	return (err);
}