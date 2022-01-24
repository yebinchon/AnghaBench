#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct exca_softc {int memalloc; } ;
struct TYPE_2__ {int /*<<< orphan*/  memenable; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXCA_ADDRWIN_ENABLE ; 
 int EXCA_MEM_WINS ; 
 int /*<<< orphan*/  FUNC0 (struct exca_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* mem_map_index ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(struct exca_softc *sc, int window)
{
	if (window < 0 || window >= EXCA_MEM_WINS)
		FUNC1("exca_mem_unmap: window out of range");

	FUNC0(sc, EXCA_ADDRWIN_ENABLE, mem_map_index[window].memenable);
	sc->memalloc &= ~(1 << window);
}