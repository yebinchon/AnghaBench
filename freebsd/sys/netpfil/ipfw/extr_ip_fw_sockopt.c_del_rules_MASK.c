#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockopt_data {int valsize; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_5__ {int new_set; } ;
struct TYPE_4__ {TYPE_2__ range; } ;
typedef  TYPE_1__ ipfw_range_header ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (struct ip_fw_chain*,TYPE_2__*,int*) ; 
 scalar_t__ FUNC2 (struct sockopt_data*,int) ; 

__attribute__((used)) static int
FUNC3(struct ip_fw_chain *chain, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	ipfw_range_header *rh;
	int error, ndel;

	if (sd->valsize != sizeof(*rh))
		return (EINVAL);

	rh = (ipfw_range_header *)FUNC2(sd, sd->valsize);

	if (FUNC0(&rh->range) != 0)
		return (EINVAL);

	ndel = 0;
	if ((error = FUNC1(chain, &rh->range, &ndel)) != 0)
		return (error);

	/* Save number of rules deleted */
	rh->range.new_set = ndel;
	return (0);
}