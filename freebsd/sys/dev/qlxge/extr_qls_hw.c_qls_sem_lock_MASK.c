#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int qla_initiate_recovery; } ;
typedef  TYPE_1__ qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  Q81_CTL_SEMAPHORE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(qla_host_t *ha, uint32_t mask, uint32_t value)
{
	uint32_t count = 30;
	uint32_t data;

	while (count--) {
		FUNC2(ha, Q81_CTL_SEMAPHORE, (mask|value));
	
		data = FUNC1(ha, Q81_CTL_SEMAPHORE);

		if (data & value) {
			return (0);
		} else {
			FUNC0(100);
		}
	}
	ha->qla_initiate_recovery = 1;
	return (-1);
}