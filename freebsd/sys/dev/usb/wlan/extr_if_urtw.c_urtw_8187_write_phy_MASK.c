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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct urtw_softc {int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  URTW_PHY_MAGIC1 ; 
 int /*<<< orphan*/  URTW_PHY_MAGIC2 ; 
 int /*<<< orphan*/  URTW_PHY_MAGIC3 ; 
 int /*<<< orphan*/  URTW_PHY_MAGIC4 ; 
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static usb_error_t
FUNC2(struct urtw_softc *sc, uint8_t addr, uint32_t data)
{
	uint32_t phyw;
	usb_error_t error;

	phyw = ((data << 8) | (addr | 0x80));
	FUNC0(sc, URTW_PHY_MAGIC4, ((phyw & 0xff000000) >> 24));
	FUNC0(sc, URTW_PHY_MAGIC3, ((phyw & 0x00ff0000) >> 16));
	FUNC0(sc, URTW_PHY_MAGIC2, ((phyw & 0x0000ff00) >> 8));
	FUNC0(sc, URTW_PHY_MAGIC1, ((phyw & 0x000000ff)));
	FUNC1(&sc->sc_mtx, 1);
fail:
	return (error);
}