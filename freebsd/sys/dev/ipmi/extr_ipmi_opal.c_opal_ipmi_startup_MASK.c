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
struct ipmi_softc {int /*<<< orphan*/  ipmi_dev; int /*<<< orphan*/  ipmi_kthread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ipmi_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opal_ipmi_loop ; 

__attribute__((used)) static int
FUNC2(struct ipmi_softc *sc)
{

	return (FUNC1(opal_ipmi_loop, sc, &sc->ipmi_kthread, 0, 0,
	    "%s: opal", FUNC0(sc->ipmi_dev)));
}