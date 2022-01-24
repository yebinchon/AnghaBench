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
struct bhnd_pcihb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_PCI_WAR_RESUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bhnd_pcihb_softc*,int /*<<< orphan*/ ) ; 
 struct bhnd_pcihb_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct bhnd_pcihb_softc	*sc;
	int			 error;

	sc = FUNC3(dev);

	if ((error = FUNC1(dev)))
		return (error);

	/* Apply attach/resume work-arounds */
	if ((error = FUNC2(sc, BHND_PCI_WAR_RESUME))) {
		FUNC0(dev);
		return (error);
	}

	return (0);
}