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
struct bwi_softc {TYPE_1__* sc_cur_regwin; } ;
struct bwi_mac {int dummy; } ;
struct TYPE_2__ {scalar_t__ rw_type; } ;

/* Variables and functions */
 scalar_t__ BWI_REGWIN_T_MAC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct bwi_mac*) ; 

__attribute__((used)) static int
FUNC2(struct bwi_softc *sc)
{
	struct bwi_mac *mac;

	FUNC0(sc->sc_cur_regwin->rw_type == BWI_REGWIN_T_MAC,
	    ("current regwin type %d", sc->sc_cur_regwin->rw_type));
	mac = (struct bwi_mac *)sc->sc_cur_regwin;

	return FUNC1(mac);
}