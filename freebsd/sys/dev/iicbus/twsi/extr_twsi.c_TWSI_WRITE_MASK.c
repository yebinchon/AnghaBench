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
typedef  int /*<<< orphan*/  uint32_t ;
struct twsi_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC2(struct twsi_softc *sc, bus_size_t off, uint32_t val)
{

	FUNC1(sc->dev, "Writing %x to %lx\n", val, off);
	FUNC0(sc->res[0], off, val);
}