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
typedef  int uint16_t ;
struct ucom_softc {struct uark_softc* sc_parent; } ;
struct uark_softc {int dummy; } ;
struct termios {int c_ospeed; int c_cflag; } ;

/* Variables and functions */
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int PARENB ; 
 int PARODD ; 
 int UARK_BAUD_REF ; 
 int UARK_PARITY_EVEN ; 
 int UARK_PARITY_NONE ; 
 int UARK_PARITY_ODD ; 
 int FUNC0 (int) ; 
 int UARK_STOP_BITS_1 ; 
 int UARK_STOP_BITS_2 ; 
 int /*<<< orphan*/  FUNC1 (struct uark_softc*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct ucom_softc *ucom, struct termios *t)
{
	struct uark_softc *sc = ucom->sc_parent;
	uint32_t speed = t->c_ospeed;
	uint16_t data;

	/*
	 * NOTE: When reverse computing the baud rate from the "data" all
	 * allowed baud rates are within 3% of the initial baud rate.
	 */
	data = (UARK_BAUD_REF + (speed / 2)) / speed;

	FUNC1(sc, 3, 0x83);
	FUNC1(sc, 0, data & 0xFF);
	FUNC1(sc, 1, data >> 8);
	FUNC1(sc, 3, 0x03);

	if (t->c_cflag & CSTOPB)
		data = UARK_STOP_BITS_2;
	else
		data = UARK_STOP_BITS_1;

	if (t->c_cflag & PARENB) {
		if (t->c_cflag & PARODD)
			data |= UARK_PARITY_ODD;
		else
			data |= UARK_PARITY_EVEN;
	} else
		data |= UARK_PARITY_NONE;

	switch (t->c_cflag & CSIZE) {
	case CS5:
		data |= FUNC0(5);
		break;
	case CS6:
		data |= FUNC0(6);
		break;
	case CS7:
		data |= FUNC0(7);
		break;
	default:
	case CS8:
		data |= FUNC0(8);
		break;
	}
	FUNC1(sc, 3, 0x00);
	FUNC1(sc, 3, data);
}