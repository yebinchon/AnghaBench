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
typedef  int /*<<< orphan*/  tmp ;
struct sysctl_netisr_proto {scalar_t__ snp_policy; int snp_flags; int /*<<< orphan*/  snp_dispatch; int /*<<< orphan*/  snp_qlimit; int /*<<< orphan*/  snp_proto; int /*<<< orphan*/  snp_name; } ;

/* Variables and functions */
 scalar_t__ NETISR_POLICY_CPU ; 
 scalar_t__ NETISR_POLICY_FLOW ; 
 scalar_t__ NETISR_POLICY_SOURCE ; 
 int NETISR_SNP_FLAGS_DRAINEDCPU ; 
 int NETISR_SNP_FLAGS_M2CPUID ; 
 int NETISR_SNP_FLAGS_M2FLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC2(struct sysctl_netisr_proto *snpp)
{
	char tmp[20];

	FUNC1("{[:-6}{k:name/%s}{]:}", snpp->snp_name);
	FUNC1(" {:protocol/%5u}", snpp->snp_proto);
	FUNC1(" {:queue-limit/%6u}", snpp->snp_qlimit);
	FUNC1(" {:policy-type/%6s}",
	    (snpp->snp_policy == NETISR_POLICY_SOURCE) ?  "source" :
	    (snpp->snp_policy == NETISR_POLICY_FLOW) ? "flow" :
	    (snpp->snp_policy == NETISR_POLICY_CPU) ? "cpu" : "-");
	FUNC0(snpp->snp_dispatch, tmp,
	    sizeof(tmp));
	FUNC1(" {:policy/%8s}", tmp);
	FUNC1("   {:flags/%s%s%s}\n",
	    (snpp->snp_flags & NETISR_SNP_FLAGS_M2CPUID) ?  "C" : "-",
	    (snpp->snp_flags & NETISR_SNP_FLAGS_DRAINEDCPU) ?  "D" : "-",
	    (snpp->snp_flags & NETISR_SNP_FLAGS_M2FLOW) ? "F" : "-");
}