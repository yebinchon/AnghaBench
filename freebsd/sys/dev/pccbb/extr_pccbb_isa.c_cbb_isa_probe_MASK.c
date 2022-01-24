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
struct cbb_softc {int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/ * exca; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct cbb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcic_ids ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	int error;
	struct cbb_softc *sc = FUNC4(dev);

	/* Check isapnp ids */
	error = FUNC0(FUNC3(dev), dev, pcic_ids);
	if (error != 0 && error != ENOENT)
		return (error);

	error = FUNC1(dev);
	if (error != 0)
		return (error);

	/* Check to make sure that we have actual hardware */
	error = FUNC5(dev, &sc->exca[0], sc->bst, sc->bsh);
	FUNC2(dev);
	return (error);
}