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
typedef  scalar_t__ u_int ;
struct bge_softc {int /*<<< orphan*/  bge_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ PCI_FUNCMAX ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct bge_softc *sc)
{
	device_t dev = sc->bge_dev;
	u_int b, d, f, fscan, s;

	d = FUNC2(dev);
	b = FUNC1(dev);
	s = FUNC4(dev);
	f = FUNC3(dev);
	for (fscan = 0; fscan <= PCI_FUNCMAX; fscan++)
		if (fscan != f && FUNC0(d, b, s, fscan) != NULL)
			return (1);
	return (0);
}