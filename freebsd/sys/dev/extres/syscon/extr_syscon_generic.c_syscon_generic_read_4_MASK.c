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
struct syscon_generic_softc {int /*<<< orphan*/  mem_res; } ;
struct syscon {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct syscon_generic_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct syscon_generic_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct syscon_generic_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC4(struct syscon *syscon, bus_size_t offset)
{
	struct syscon_generic_softc *sc;
	uint32_t val;

	sc = FUNC3(syscon->pdev);

	FUNC0(sc);
	val = FUNC2(sc->mem_res, offset);
	FUNC1(sc);
	return (val);
}