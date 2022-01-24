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
struct siba_bhndb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct siba_bhndb_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct siba_bhndb_softc*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct siba_bhndb_softc	*sc;
	int			 error;

	sc = FUNC0(dev);

	/* Apply attach/resume work-arounds */
	if ((error = FUNC1(sc)))
		return (error);

	/* Call our superclass' implementation */
	return (FUNC2(dev));
}