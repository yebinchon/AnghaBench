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
typedef  int u_int32_t ;
struct sc_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC4(struct sc_info *sc, int state)
{
	u_int32_t data;

	FUNC0(CHANGE, ("m3_power(%d)\n", state));
	FUNC1(sc);

	data = FUNC2(sc->dev, 0x34, 1);
	if (FUNC2(sc->dev, data, 1) == 1) {
		FUNC3(sc->dev, data + 4, state, 1);
	}

	return 0;
}