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
struct mps_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct mps_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mps_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mps_softc*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct mps_softc *sc;
	int error;

	sc = FUNC0(dev);

	if ((error = FUNC1(sc)) != 0)
		return (error);

	FUNC2(sc);
	return (0);
}