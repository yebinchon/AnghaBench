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
typedef  int /*<<< orphan*/  uint64_t ;
struct ntb_plx_softc {scalar_t__ link; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ntb_plx_softc*,int,int /*<<< orphan*/ ) ; 
 struct ntb_plx_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t dev, uint64_t bits)
{
	struct ntb_plx_softc *sc = FUNC1(dev);

	FUNC0(sc, sc->link ? 0xc68 : 0xc58, bits);
}