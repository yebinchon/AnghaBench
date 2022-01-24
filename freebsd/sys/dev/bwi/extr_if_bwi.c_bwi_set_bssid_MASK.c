#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  const* ic_macaddr; } ;
struct bwi_softc {TYPE_2__ sc_ic; TYPE_1__* sc_cur_regwin; } ;
struct bwi_myaddr_bssid {int /*<<< orphan*/  bssid; int /*<<< orphan*/  myaddr; } ;
struct bwi_mac {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {scalar_t__ rw_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_ADDR_FILTER_BSSID ; 
 scalar_t__ BWI_REGWIN_T_MAC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC4(struct bwi_softc *sc, const uint8_t *bssid)
{
	struct bwi_mac *mac;
	struct bwi_myaddr_bssid buf;
	const uint8_t *p;
	uint32_t val;
	int n, i;

	FUNC0(sc->sc_cur_regwin->rw_type == BWI_REGWIN_T_MAC,
	    ("current regwin type %d", sc->sc_cur_regwin->rw_type));
	mac = (struct bwi_mac *)sc->sc_cur_regwin;

	FUNC3(sc, BWI_ADDR_FILTER_BSSID, bssid);

	FUNC2(sc->sc_ic.ic_macaddr, buf.myaddr, sizeof(buf.myaddr));
	FUNC2(bssid, buf.bssid, sizeof(buf.bssid));

	n = sizeof(buf) / sizeof(val);
	p = (const uint8_t *)&buf;
	for (i = 0; i < n; ++i) {
		int j;

		val = 0;
		for (j = 0; j < sizeof(val); ++j)
			val |= ((uint32_t)(*p++)) << (j * 8);

		FUNC1(mac, 0x20 + (i * sizeof(val)), val);
	}
}