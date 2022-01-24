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
struct bcm_mips_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 uintptr_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uintptr_t
FUNC3(struct bcm_mips_softc *sc)
{
	uintptr_t xref;

	/* Determine our interrupt domain */
	xref = FUNC0(FUNC2(sc->dev), sc->dev,
	    true);
	FUNC1(xref != 0, ("missing interrupt domain"));

	return (xref);
}