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
typedef  int u_int8_t ;
struct hifn_softc {int sc_drammodel; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*,int*,int) ; 
 scalar_t__ FUNC1 (struct hifn_softc*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (struct hifn_softc*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC3(struct hifn_softc *sc)
{
	u_int8_t data[8], dataexpect[8];
	int i;

	for (i = 0; i < sizeof(data); i++)
		data[i] = dataexpect[i] = 0x55;
	if (FUNC2(sc, 0, data))
		return (-1);
	if (FUNC1(sc, 0, data))
		return (-1);
	if (FUNC0(data, dataexpect, sizeof(data)) != 0) {
		sc->sc_drammodel = 1;
		return (0);
	}

	for (i = 0; i < sizeof(data); i++)
		data[i] = dataexpect[i] = 0xaa;
	if (FUNC2(sc, 0, data))
		return (-1);
	if (FUNC1(sc, 0, data))
		return (-1);
	if (FUNC0(data, dataexpect, sizeof(data)) != 0) {
		sc->sc_drammodel = 1;
		return (0);
	}

	return (0);
}