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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct urtw_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  URTW_MAC0 ; 
 int /*<<< orphan*/  URTW_MAC4 ; 
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static usb_error_t
FUNC2(struct urtw_softc *sc, const uint8_t *macaddr)
{
	usb_error_t error;

	FUNC1(sc, URTW_MAC0, ((const uint32_t *)macaddr)[0]);
	FUNC0(sc, URTW_MAC4, ((const uint32_t *)macaddr)[1] & 0xffff);

fail:
	return (error);
}