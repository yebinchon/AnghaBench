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
struct g_keyboard_softc {int /*<<< orphan*/  sc_callout; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int g_keyboard_key_press_interval ; 
 int /*<<< orphan*/  g_keyboard_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,struct g_keyboard_softc*) ; 

__attribute__((used)) static void
FUNC2(struct g_keyboard_softc *sc)
{
	int i = g_keyboard_key_press_interval;

	if (i <= 0)
		i = 1;
	else if (i > 1023)
		i = 1023;

	i = FUNC0(i);

	FUNC1(&sc->sc_callout, i, &g_keyboard_timeout, sc);
}