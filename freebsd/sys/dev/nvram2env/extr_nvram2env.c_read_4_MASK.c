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
struct nvram2env_softc {int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; scalar_t__ need_swap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint32_t FUNC2(struct nvram2env_softc * sc, int offset) 
{
	if (sc->need_swap) 
		return (FUNC0(FUNC1(sc->bst, sc->bsh, offset)));
	else
		return (FUNC1(sc->bst, sc->bsh, offset));
}