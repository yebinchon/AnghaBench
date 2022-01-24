#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int chan; } ;
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int sc_hwoflow; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_hwiflow; TYPE_1__ sc_bas; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  SAB_VSTR ; 
 int SAB_VSTR_VMASK ; 
#define  SAB_VSTR_V_1 130 
#define  SAB_VSTR_V_2 129 
#define  SAB_VSTR_V_32 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct uart_softc *sc)
{
	char buf[80];
	const char *vstr;
	int error;
	char ch;

	error = FUNC1(&sc->sc_bas);
	if (error)
		return (error);

	sc->sc_rxfifosz = 32;
	sc->sc_txfifosz = 32;

	ch = sc->sc_bas.chan - 1 + 'A';

	switch (FUNC3(&sc->sc_bas, SAB_VSTR) & SAB_VSTR_VMASK) {
	case SAB_VSTR_V_1:
		vstr = "v1";
		break;
	case SAB_VSTR_V_2:
		vstr = "v2";
		break;
	case SAB_VSTR_V_32:
		vstr = "v3.2";
		sc->sc_hwiflow = 0;	/* CTS doesn't work with RFC:RFDF. */
		sc->sc_hwoflow = 1;
		break;
	default:
		vstr = "v4?";
		break;
	}

	FUNC2(buf, sizeof(buf), "SAB 82532 %s, channel %c", vstr, ch);
	FUNC0(sc->sc_dev, buf);
	return (0);
}