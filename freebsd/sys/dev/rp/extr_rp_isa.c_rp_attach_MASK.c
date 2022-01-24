#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_9__ {int NumAiop; } ;
typedef  TYPE_1__ CONTROLLER_t ;

/* Variables and functions */
 int /*<<< orphan*/  FREQ_DIS ; 
 int /*<<< orphan*/  MAX_AIOPS_PER_BOARD ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  rp_controller ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	int	unit;
	int	num_ports, num_aiops;
	int	aiop;
	CONTROLLER_t	*ctlp;
	int	retval;

	unit = FUNC1(dev);

	ctlp = FUNC0(dev);

#ifdef notdef
	num_aiops = sInitController(ctlp,
				rp_controller,
				MAX_AIOPS_PER_BOARD, 0,
				FREQ_DIS, 0);
#else
	num_aiops = ctlp->NumAiop;
#endif /* notdef */

	num_ports = 0;
	for(aiop=0; aiop < num_aiops; aiop++) {
		FUNC7(ctlp, aiop);
		FUNC4(rp_controller, ctlp, aiop);
		num_ports += FUNC5(ctlp, aiop);
	}

	retval = FUNC2(ctlp, num_aiops, num_ports);
	if (retval != 0)
		goto nogo;

	return (0);

nogo:
	FUNC3(ctlp);

	return (retval);
}