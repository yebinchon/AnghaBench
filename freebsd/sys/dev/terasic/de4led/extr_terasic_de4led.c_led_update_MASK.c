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
struct terasic_de4led_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct terasic_de4led_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct terasic_de4led_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct terasic_de4led_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct terasic_de4led_softc*) ; 

__attribute__((used)) static void
FUNC4(struct terasic_de4led_softc *sc, int bit, int onoff)
{

	FUNC0(sc);
	FUNC1(sc, bit, onoff);
	FUNC3(sc);
	FUNC2(sc);
}