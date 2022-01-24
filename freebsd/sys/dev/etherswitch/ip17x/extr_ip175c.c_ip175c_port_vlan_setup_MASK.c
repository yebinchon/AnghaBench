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
typedef  int uint32_t ;
struct ip17x_vlan {int ports; } ;
struct TYPE_2__ {int es_nports; } ;
struct ip17x_softc {int cpuport; int numports; int* portphy; int /*<<< orphan*/  sc_dev; struct ip17x_vlan* vlan; TYPE_1__ info; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  ports ;

/* Variables and functions */
 int IP175X_NUM_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct ip17x_softc *sc)
{
	struct ip17x_vlan *v;
	uint32_t ports[IP175X_NUM_PORTS], reg[IP175X_NUM_PORTS/2];
	int i, err, phy;

	FUNC0(sc->cpuport == 5, ("cpuport != 5 not supported for IP175C"));
	FUNC0(sc->numports == 6, ("numports != 6 not supported for IP175C"));

	/* Build the port access masks. */
	FUNC3(ports, 0, sizeof(ports));
	for (i = 0; i < sc->info.es_nports; i++) {
		phy = sc->portphy[i];
		v = &sc->vlan[i];
		ports[phy] = v->ports;
	}

	/* Move the cpuport bit to its correct place. */
	for (i = 0; i < sc->numports; i++) {
		if (ports[i] & (1 << sc->cpuport)) {
			ports[i] |= (1 << 7);
			ports[i] &= ~(1 << sc->cpuport);
		}
	}

	/* And now build the switch register data. */
	FUNC3(reg, 0, sizeof(reg));
	for (i = 0; i < (sc->numports / 2); i++)
		reg[i] = ports[i * 2] << 8 | ports[i * 2 + 1];

	/* Update the switch resgisters. */
	err = FUNC2(sc->sc_dev, 29, 19, reg[0]);
	if (err == 0)
		err = FUNC2(sc->sc_dev, 29, 20, reg[1]);
	if (err == 0)
		err = FUNC1(sc->sc_dev, 29, 21, 0xff00, reg[2]);
	if (err == 0)
		err = FUNC1(sc->sc_dev, 30, 18, 0x00ff, reg[2]);
	return (err);
}