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
struct e82545_softc {int esc_ITR; int esc_ICS; int esc_IMC; int esc_IMS; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
#define  E1000_ICR 132 
#define  E1000_ICS 131 
#define  E1000_IMC 130 
#define  E1000_IMS 129 
#define  E1000_ITR 128 
 int /*<<< orphan*/  FUNC1 (struct e82545_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct e82545_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct e82545_softc*,int) ; 

__attribute__((used)) static void
FUNC4(struct e82545_softc *sc, uint32_t offset, uint32_t value)
{

	FUNC0("intr_write: off %x, val %x\n\r", offset, value);
	
	switch (offset) {
	case E1000_ICR:
		FUNC2(sc, value);
		break;
	case E1000_ITR:
		sc->esc_ITR = value;
		break;
	case E1000_ICS:
		sc->esc_ICS = value;	/* not used: store for debug */
		FUNC1(sc, value);
		break;
	case E1000_IMS:
		FUNC3(sc, value);
		break;
	case E1000_IMC:
		sc->esc_IMC = value;	/* for debug */
		sc->esc_IMS &= ~value;
		// XXX clear interrupts if all ICR bits now masked
		// and interrupt was pending ?
		break;
	default:
		break;
	}
}