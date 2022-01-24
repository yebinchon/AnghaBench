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
typedef  int uint32_t ;
struct TYPE_4__ {int qla_initiate_recovery; } ;
typedef  TYPE_1__ qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  Q81_CTL_ROUTING_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(qla_host_t *ha, uint32_t op)
{
	uint32_t data32;
	uint32_t count = 3;

	while (count--) {
		data32 = FUNC1(ha, Q81_CTL_ROUTING_INDEX);

		if (data32 & op)
			return (0);

		FUNC0(100);
	}
	ha->qla_initiate_recovery = 1;
	return (-1);
}