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
struct thread {int dummy; } ;
struct icee_softc {int /*<<< orphan*/  dev; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 struct icee_softc* FUNC0 (struct cdev*) ; 
 scalar_t__ DS_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC3(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	struct icee_softc *sc;

	sc = FUNC0(dev);
	if (FUNC2(sc->dev) < DS_BUSY)
		FUNC1(sc->dev);

	return (0);
}