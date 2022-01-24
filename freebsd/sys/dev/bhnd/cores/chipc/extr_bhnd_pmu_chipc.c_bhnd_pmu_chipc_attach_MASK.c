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
struct chipc_softc {struct bhnd_resource* core; } ;
struct bhnd_resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct bhnd_resource*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct chipc_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct chipc_softc	*chipc_sc;
	struct bhnd_resource	*r;

	/* Fetch core registers from ChipCommon parent */
	chipc_sc = FUNC2(FUNC1(dev));
	r = chipc_sc->core;

	return (FUNC0(dev, r));
}