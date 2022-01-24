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
struct hdac_mem {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  mem_rid; } ;
struct hdac_softc {int /*<<< orphan*/  dev; struct hdac_mem mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct hdac_softc *sc)
{
	struct hdac_mem *mem;

	mem = &sc->mem;
	if (mem->mem_res != NULL)
		FUNC0(sc->dev, SYS_RES_MEMORY, mem->mem_rid,
		    mem->mem_res);
	mem->mem_res = NULL;
}