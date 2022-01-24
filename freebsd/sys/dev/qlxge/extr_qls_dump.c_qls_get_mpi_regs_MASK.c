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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  qla_host_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static int
FUNC1(qla_host_t *ha, uint32_t *buf, uint32_t offset, uint32_t count)
{
	int i, ret = 0;

	for (i = 0; i < count; i++, buf++) {

		ret = FUNC0(ha, (offset + i), buf);

		if (ret)
			return ret;
	}

	return (ret);
}