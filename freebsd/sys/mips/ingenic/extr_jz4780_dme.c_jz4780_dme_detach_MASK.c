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
struct jz4780_dme_softc {int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jz4780_dme_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jz4780_dme_spec ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct jz4780_dme_softc *sc = FUNC1(dev);

	FUNC0(dev, jz4780_dme_spec, sc->res);
	return (0);
}