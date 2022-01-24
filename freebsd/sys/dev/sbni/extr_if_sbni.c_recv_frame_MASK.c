#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_int ;
struct TYPE_2__ {int /*<<< orphan*/  bad_rx_number; int /*<<< orphan*/  all_rx_number; } ;
struct sbni_softc {TYPE_1__ in_stats; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRC32_INITIAL ; 
 int /*<<< orphan*/  CSR0 ; 
 int CT_ZER ; 
 int /*<<< orphan*/  FL_PREV_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sbni_softc*) ; 
 scalar_t__ FUNC1 (struct sbni_softc*,int*,int*,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sbni_softc*,int) ; 
 int FUNC3 (struct sbni_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sbni_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct sbni_softc*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sbni_softc*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct sbni_softc *sc)
{
	u_int32_t crc;
	u_int framelen, frameno, ack;
	u_int is_first, frame_ok;

	crc = CRC32_INITIAL;
	if (FUNC1(sc, &framelen, &frameno, &ack, &is_first, &crc)) {
		frame_ok = framelen > 4 ?
		    FUNC6(sc, framelen, frameno, is_first, crc) :
		    FUNC5(sc, framelen, crc);
		if (frame_ok)
			FUNC2(sc, ack);
	} else {
		framelen = 0;
		frame_ok = 0;
	}

	FUNC4(sc, CSR0, FUNC3(sc, CSR0) ^ CT_ZER);
	if (frame_ok) {
		sc->state |= FL_PREV_OK;
		if (framelen > 4)
			sc->in_stats.all_rx_number++;
	} else {
		sc->state &= ~FL_PREV_OK;
		FUNC0(sc);
		sc->in_stats.all_rx_number++;
		sc->in_stats.bad_rx_number++;
	}

	return (!frame_ok || framelen > 4);
}