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
struct bhnd_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct bhnd_softc*) ; 
 struct bhnd_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(device_t dev)
{
	struct bhnd_softc	*sc;
	int			 error;

	if (!FUNC2(dev))
		return (EBUSY);

	sc = FUNC1(dev);

	if ((error = FUNC0(sc)))
		return (error);

	return (0);
}