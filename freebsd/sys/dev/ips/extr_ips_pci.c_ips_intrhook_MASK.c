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
struct ips_softc {int configured; int /*<<< orphan*/  ips_ich; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ips_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ips_softc*) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct ips_softc *sc = (struct ips_softc *)arg;

	FUNC0(&sc->ips_ich);
	if (FUNC1(sc))
		FUNC2(sc);
	else
		sc->configured = 1;
}