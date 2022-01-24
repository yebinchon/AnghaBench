#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ips_softc_t ;
typedef  int /*<<< orphan*/  ips_command_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 int /*<<< orphan*/  IPS_STATIC_FLAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(ips_softc_t *sc)
{
	ips_command_t *command;
	int error = 0;

	if (FUNC2(sc, &command, IPS_STATIC_FLAG) > 0){
		FUNC1(sc->dev, "unable to get adapter configuration\n");
		return ENXIO;
	}
	FUNC3(command);
	if (FUNC0(command)){
		error = ENXIO;
	}
	return error;
}