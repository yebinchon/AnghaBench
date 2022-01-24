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
struct ntb_plx_softc {int spad_count1; int spad_count2; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ntb_plx_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t dev)
{
	struct ntb_plx_softc *sc = FUNC0(dev);
	int i;

	for (i = 0; i < sc->spad_count1 + sc->spad_count2; i++)
		FUNC1(dev, i, 0);
}