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
typedef  int uint16_t ;
struct octeon_device {int cores_crashed; int /*<<< orphan*/  watchdog_task; } ;
typedef  int /*<<< orphan*/  err_msg_was_printed ;

/* Variables and functions */
 int /*<<< orphan*/  LIO_CN23XX_SLI_SCRATCH2 ; 
 int LIO_MAX_CORES ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,char*,int) ; 
 struct octeon_device* FUNC3 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *param)
{
	int		core_num;
	uint16_t	mask_of_crashed_or_stuck_cores = 0;
	struct octeon_device	*oct = param;
	bool		err_msg_was_printed[12];

	FUNC0(err_msg_was_printed, sizeof(err_msg_was_printed));

	while (1) {
		FUNC1(oct->watchdog_task);
		mask_of_crashed_or_stuck_cores =
			(uint16_t)FUNC5(oct, LIO_CN23XX_SLI_SCRATCH2);

		if (mask_of_crashed_or_stuck_cores) {
			struct octeon_device *other_oct;

			oct->cores_crashed = true;
			other_oct = FUNC3(oct);
			if (other_oct != NULL)
				other_oct->cores_crashed = true;

			for (core_num = 0; core_num < LIO_MAX_CORES;
			     core_num++) {
				bool core_crashed_or_got_stuck;

				core_crashed_or_got_stuck =
				    (mask_of_crashed_or_stuck_cores >>
				     core_num) & 1;
				if (core_crashed_or_got_stuck &&
				    !err_msg_was_printed[core_num]) {
					FUNC2(oct,
						    "ERROR: Octeon core %d crashed or got stuck! See oct-fwdump for details.\n",
						    core_num);
					err_msg_was_printed[core_num] = true;
				}
			}

		}

		/* sleep for two seconds */
		FUNC6("-", FUNC4(2000));
	}
}