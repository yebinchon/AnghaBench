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
typedef  int /*<<< orphan*/  uint32_t ;
struct chipc_softc {int /*<<< orphan*/  core; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHIPC_CHIPST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct chipc_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC2(device_t dev)
{
	struct chipc_softc *sc = FUNC1(dev);
	return (FUNC0(sc->core, CHIPC_CHIPST));
}