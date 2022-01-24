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
struct esp_softc {int /*<<< orphan*/  sc_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct esp_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct esp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct esp_softc *esc;
	int error;

	esc = FUNC1(dev);

	error = FUNC2(esc);
	if (error != 0)
		return (error);
	FUNC0(dev, SYS_RES_MEMORY, FUNC3(esc->sc_res),
	    esc->sc_res);

	return (0);
}