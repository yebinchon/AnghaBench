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
typedef  int uint32_t ;
struct e82545_softc {int esc_ICR; int esc_ITR; int esc_IMS; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  E1000_ICR 132 
#define  E1000_ICS 131 
#define  E1000_IMC 130 
#define  E1000_IMS 129 
#define  E1000_ITR 128 
 int /*<<< orphan*/  FUNC1 (struct e82545_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC2(struct e82545_softc *sc, uint32_t offset)
{
	uint32_t retval;

	retval = 0;

	FUNC0("intr_read: off %x\n\r", offset);
	
	switch (offset) {
	case E1000_ICR:
		retval = sc->esc_ICR;
		sc->esc_ICR = 0;
		FUNC1(sc, ~0);
		break;
	case E1000_ITR:
		retval = sc->esc_ITR;
		break;
	case E1000_ICS:
		/* write-only register */
		break;
	case E1000_IMS:
		retval = sc->esc_IMS;
		break;
	case E1000_IMC:
		/* write-only register */
		break;
	default:
		break;
	}

	return (retval);
}