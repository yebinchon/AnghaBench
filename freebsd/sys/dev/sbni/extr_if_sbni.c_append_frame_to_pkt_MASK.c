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
typedef  scalar_t__ u_int ;
struct sbni_softc {scalar_t__ inppos; scalar_t__ wait_frameno; int /*<<< orphan*/  ifp; TYPE_1__* rx_buf_p; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {scalar_t__ m_data; } ;

/* Variables and functions */
 scalar_t__ CRC32_REMAINDER ; 
 scalar_t__ ETHER_MAX_LEN ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sbni_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sbni_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbni_softc*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct sbni_softc *sc, u_int framelen, u_int32_t crc)
{
	caddr_t p;

	if (sc->inppos + framelen > ETHER_MAX_LEN)
		return (0);

	if (!sc->rx_buf_p && !FUNC1(sc))
		return (0);

	p = sc->rx_buf_p->m_data + sc->inppos;
	FUNC4(sc, p, framelen);
	if (FUNC0(crc, p, framelen) != CRC32_REMAINDER)
		return (0);

	sc->inppos += framelen - 4;
	if (--sc->wait_frameno == 0) {		/* last frame received */
		FUNC3(sc);
		FUNC2(sc->ifp, IFCOUNTER_IPACKETS, 1);
	}

	return (1);
}