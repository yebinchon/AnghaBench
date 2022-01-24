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
struct mgb_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 struct mgb_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mgb_softc*) ; 

__attribute__((used)) static int
FUNC3(if_ctx_t ctx)
{
	struct mgb_softc *sc;

	sc = FUNC1(ctx);

	FUNC0(sc->dev, "Interrupt test: %s\n",
	    (FUNC2(sc) ? "PASS" : "FAIL"));

	return (0);
}