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
typedef  int u_int32_t ;
struct agg_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct agg_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct agg_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  PORT_RINGBUS_CTRL ; 

__attribute__((used)) static void
FUNC2(struct agg_info *ess, int src, int dest)
{
	u_int32_t	data;

	data = FUNC0(ess, PORT_RINGBUS_CTRL, 4);
	data &= ~(0xfU << src);
	data |= (0xfU & dest) << src;
	FUNC1(ess, PORT_RINGBUS_CTRL, data, 4);
}