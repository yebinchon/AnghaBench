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
struct bio {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ ips_softc_t ;
typedef  int /*<<< orphan*/  ips_command_t ;

/* Variables and functions */
 struct bio* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bio*) ; 

void FUNC4(ips_softc_t *sc)
{
	struct bio *iobuf;
	ips_command_t *command;

	iobuf = FUNC0(&sc->queue);
	if(!iobuf)
		return;

	if (FUNC2(sc, &command, 0))
		return;
	
	FUNC1(&sc->queue, iobuf);
	FUNC3(command, iobuf);
	return;
}