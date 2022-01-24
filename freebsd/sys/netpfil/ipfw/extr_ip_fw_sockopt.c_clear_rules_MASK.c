#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockopt_data {int valsize; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_8__ {int flags; int new_set; } ;
struct TYPE_6__ {TYPE_4__ range; } ;
typedef  TYPE_1__ ipfw_range_header ;
struct TYPE_7__ {scalar_t__ opcode; } ;
typedef  TYPE_2__ ip_fw3_opheader ;

/* Variables and functions */
 int EINVAL ; 
 int IPFW_RCFLAG_ALL ; 
 scalar_t__ IP_FW_XRESETLOG ; 
 int LOG_NOTICE ; 
 int LOG_SECURITY ; 
 scalar_t__ V_fw_verbose ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int FUNC1 (struct ip_fw_chain*,TYPE_4__*,int) ; 
 scalar_t__ FUNC2 (struct sockopt_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 

__attribute__((used)) static int
FUNC4(struct ip_fw_chain *chain, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	ipfw_range_header *rh;
	int log_only, num;
	char *msg;

	if (sd->valsize != sizeof(*rh))
		return (EINVAL);

	rh = (ipfw_range_header *)FUNC2(sd, sd->valsize);

	if (FUNC0(&rh->range) != 0)
		return (EINVAL);

	log_only = (op3->opcode == IP_FW_XRESETLOG);

	num = FUNC1(chain, &rh->range, log_only);

	if (rh->range.flags & IPFW_RCFLAG_ALL)
		msg = log_only ? "All logging counts reset" :
		    "Accounting cleared";
	else
		msg = log_only ? "logging count reset" : "cleared";

	if (V_fw_verbose) {
		int lev = LOG_SECURITY | LOG_NOTICE;
		FUNC3(lev, "ipfw: %s.\n", msg);
	}

	/* Save number of rules cleared */
	rh->range.new_set = num;
	return (0);
}