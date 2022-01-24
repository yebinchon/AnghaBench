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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_int ;
typedef  scalar_t__ u_char ;
struct sbni_softc {int framelen; int state; scalar_t__ outpos; scalar_t__ tx_frameno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DAT ; 
 int FL_NEED_RESEND ; 
 int FL_PREV_OK ; 
 int FRAME_FIRST ; 
 int FRAME_RETRY ; 
 int FRAME_SENT_BAD ; 
 int FRAME_SENT_OK ; 
 scalar_t__ SBNI_SIG ; 
 int /*<<< orphan*/  FUNC1 (struct sbni_softc*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct sbni_softc *sc, u_int32_t *crc_p)
{
	u_int32_t crc;
	u_int len_field;
	u_char value;

	crc = *crc_p;
	len_field = sc->framelen + 6;	/* CRC + frameno + reserved */

	if (sc->state & FL_NEED_RESEND)
		len_field |= FRAME_RETRY;	/* non-first attempt... */

	if (sc->outpos == 0)
		len_field |= FRAME_FIRST;

	len_field |= (sc->state & FL_PREV_OK) ? FRAME_SENT_OK : FRAME_SENT_BAD;
	FUNC1(sc, DAT, SBNI_SIG);

	value = (u_char)len_field;
	FUNC1(sc, DAT, value);
	crc = FUNC0(value, crc);
	value = (u_char)(len_field >> 8);
	FUNC1(sc, DAT, value);
	crc = FUNC0(value, crc);

	FUNC1(sc, DAT, sc->tx_frameno);
	crc = FUNC0(sc->tx_frameno, crc);
	FUNC1(sc, DAT, 0);
	crc = FUNC0(0, crc);
	*crc_p = crc;
}