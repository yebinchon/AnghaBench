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
typedef  int /*<<< orphan*/  u_int ;
struct tdfx_pio_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,struct tdfx_pio_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct tdfx_pio_data*) ; 

__attribute__((used)) static int
FUNC5(u_int cmd, struct tdfx_pio_data *piod)
{
	/* There are three sub-commands to the query 0x33 */
	switch(FUNC0(cmd)) {
		case 2:
			return FUNC2();
			break;
		case 3:
			return FUNC3(cmd, piod);
			break;
		case 4:
			return FUNC4(cmd, piod);
			break;
		default:
			/* In case we are thrown a bogus sub-command! */
#ifdef DEBUG
			printf("Bad Sub-cmd: 0x%x\n", _IOC_NR(cmd));
#endif
			return -EINVAL;
	}
}