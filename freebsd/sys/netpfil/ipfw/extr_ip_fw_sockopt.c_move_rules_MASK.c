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
struct sockopt_data {int valsize; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  range; } ;
typedef  TYPE_1__ ipfw_range_header ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sockopt_data*,int) ; 
 int FUNC2 (struct ip_fw_chain*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct ip_fw_chain *chain, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	ipfw_range_header *rh;

	if (sd->valsize != sizeof(*rh))
		return (EINVAL);

	rh = (ipfw_range_header *)FUNC1(sd, sd->valsize);

	if (FUNC0(&rh->range) != 0)
		return (EINVAL);

	return (FUNC2(chain, &rh->range));
}