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
typedef  int u_int ;
struct i2s_softc {int output_mask; int /*<<< orphan*/  port_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2s_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2s_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2s_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *ptr, u_int mask)
{
	struct i2s_softc 	*sc = ptr;

	if (mask == sc->output_mask)
		return;

	FUNC4(&sc->port_mtx);

	FUNC3(sc, 1);
	FUNC1(sc, 1);
	FUNC2(sc, 1);

	FUNC0(("enabled outputs: "));

	if (mask & (1 << 0)) {
		FUNC0(("SPEAKER "));
		FUNC3(sc, 0);
	} 
	if (mask & (1 << 1)) {
		FUNC0(("HEADPHONE "));
		FUNC1(sc, 0);
	}
	if (mask & (1 << 2)) {
		FUNC0(("LINEOUT "));
		FUNC2(sc, 0);
	}

	FUNC0(("\n"));
	sc->output_mask = mask;

	FUNC5(&sc->port_mtx);
}