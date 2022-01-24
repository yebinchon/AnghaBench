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
typedef  int /*<<< orphan*/  uint8_t ;
struct nct_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/ * iores; } ;
typedef  int /*<<< orphan*/  reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nct_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nct_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t
FUNC3(struct nct_softc *sc, reg_t reg, int group)
{
	uint8_t ioreg;
	uint8_t val;

	ioreg = FUNC0(sc, reg, group);
	if (sc->iores != NULL)
		val = FUNC1(sc, group, ioreg);
	else
		val = FUNC2(sc->dev, ioreg);

	return (val);
}