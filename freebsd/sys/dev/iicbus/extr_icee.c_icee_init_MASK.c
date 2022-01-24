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
struct icee_softc {int /*<<< orphan*/  wr_sz; int /*<<< orphan*/  type; int /*<<< orphan*/  size; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct icee_softc *sc)
{
	const char *dname;
	int dunit;

	dname = FUNC0(sc->dev);
	dunit = FUNC1(sc->dev);
	FUNC2(dname, dunit, "size", &sc->size);
	FUNC2(dname, dunit, "type", &sc->type);
	FUNC2(dname, dunit, "wr_sz", &sc->wr_sz);
}