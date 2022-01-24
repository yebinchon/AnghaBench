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
struct nlm_xlpge_softc {int block; scalar_t__ type; int /*<<< orphan*/ * dev_addr; scalar_t__ port; int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 scalar_t__ SGMIIC ; 
 scalar_t__ XAUIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct nlm_xlpge_softc *sc)
{

	FUNC2(sc->dev_addr);
	/* last octet is port specific */
	sc->dev_addr[5] += (sc->block * 4) + sc->port;

	if (sc->type == SGMIIC)
		FUNC0(sc->base_addr, sc->block,
		    sc->port, sc->type, sc->dev_addr);
	else if (sc->type == XAUIC)
		FUNC1(sc->base_addr, sc->block,
		    sc->port, sc->type, sc->dev_addr);
}