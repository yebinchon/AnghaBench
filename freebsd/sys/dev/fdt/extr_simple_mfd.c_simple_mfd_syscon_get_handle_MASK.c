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
struct syscon {int dummy; } ;
struct simple_mfd_softc {struct syscon* syscon; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENODEV ; 
 struct simple_mfd_softc* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(device_t dev, struct syscon **syscon)
{
	struct simple_mfd_softc *sc;

	sc = FUNC0(dev);
	*syscon = sc->syscon;
	if (*syscon == NULL)
		return (ENODEV);
	return (0);
}