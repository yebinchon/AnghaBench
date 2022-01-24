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
struct g_modem_softc {int sc_throughput; } ;

/* Variables and functions */
 int g_modem_throughput ; 
 int /*<<< orphan*/  FUNC0 (struct g_modem_softc*) ; 

__attribute__((used)) static void
FUNC1(void *arg)
{
	struct g_modem_softc *sc = arg;
	int i;

	i = sc->sc_throughput;

	sc->sc_throughput = 0;

	g_modem_throughput = i;

	FUNC0(sc);
}