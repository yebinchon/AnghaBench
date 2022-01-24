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
typedef  scalar_t__ u_int16_t ;
struct agg_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct agg_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct agg_info*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  PORT_DSP_DATA ; 

__attribute__((used)) static int
FUNC2(struct agg_info *ess, u_int16_t data)
{
	unsigned t = 0;

	while (FUNC0(ess, PORT_DSP_DATA, 2) != data) {
		if (++t == 1000) {
			return EAGAIN;
		}
		FUNC1(ess, PORT_DSP_DATA, data, 2);
	}

	return 0;
}