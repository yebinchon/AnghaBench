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
struct nlm_xlpge_softc {scalar_t__ type; int /*<<< orphan*/  port; int /*<<< orphan*/  block; int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 scalar_t__ SGMIIC ; 
 scalar_t__ XAUIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void
FUNC2(struct nlm_xlpge_softc *sc)
{
	if ((sc->type != SGMIIC) && (sc->type != XAUIC))
		return;
	FUNC0(sc->base_addr, sc->block, sc->type, sc->port);
	FUNC1((void *)sc);
}