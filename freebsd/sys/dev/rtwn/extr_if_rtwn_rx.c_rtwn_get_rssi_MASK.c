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
struct rtwn_softc {int dummy; } ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,void*) ; 

__attribute__((used)) static int8_t
FUNC2(struct rtwn_softc *sc, void *physt, int is_cck)
{
	int8_t rssi;

	if (is_cck)
		rssi = FUNC0(sc, physt);
	else	/* OFDM/HT. */
		rssi = FUNC1(sc, physt);

	return (rssi);
}