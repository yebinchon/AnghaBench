#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int aux_mux_port; } ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int FALSE ; 
 int KBDC_AUX_MUX_NUM_PORTS ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(KBDC p, int port)
{

	if (!FUNC0(p))
		return (FALSE);

	if (port < 0 || port >= KBDC_AUX_MUX_NUM_PORTS)
		return (FALSE);

	FUNC1(p)->aux_mux_port = port;

	return (TRUE);
}