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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  Q8_SEM2_UNLOCK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(qla_host_t *ha, uint32_t off, uint32_t size,
	uint32_t pattern)
{
	int rval = 0;
	uint32_t start;


	if ((rval = FUNC3(ha)))
		goto qla_wr_pattern_exit;

	if ((rval = FUNC1(ha)))
		goto qla_wr_pattern_unlock_exit;

	if ((rval = FUNC6(ha)))
		goto qla_wr_pattern_unlock_exit;

	for (start = off; start < (off + size); start = start + 4) {
		if (FUNC2(ha, start, pattern)) {
			rval = -1;
			break;
		}
	}

	rval = FUNC0(ha);

	if (rval == 0)
		rval = FUNC5(ha);

qla_wr_pattern_unlock_exit:
	FUNC4(ha, Q8_SEM2_UNLOCK);

qla_wr_pattern_exit:
	return (rval);
}