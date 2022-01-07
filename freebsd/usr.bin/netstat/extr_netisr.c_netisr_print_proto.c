
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct sysctl_netisr_proto {scalar_t__ snp_policy; int snp_flags; int snp_dispatch; int snp_qlimit; int snp_proto; int snp_name; } ;


 scalar_t__ NETISR_POLICY_CPU ;
 scalar_t__ NETISR_POLICY_FLOW ;
 scalar_t__ NETISR_POLICY_SOURCE ;
 int NETISR_SNP_FLAGS_DRAINEDCPU ;
 int NETISR_SNP_FLAGS_M2CPUID ;
 int NETISR_SNP_FLAGS_M2FLOW ;
 int netisr_dispatch_policy_to_string (int ,char*,int) ;
 int xo_emit (char*,char*,...) ;

__attribute__((used)) static void
netisr_print_proto(struct sysctl_netisr_proto *snpp)
{
 char tmp[20];

 xo_emit("{[:-6}{k:name/%s}{]:}", snpp->snp_name);
 xo_emit(" {:protocol/%5u}", snpp->snp_proto);
 xo_emit(" {:queue-limit/%6u}", snpp->snp_qlimit);
 xo_emit(" {:policy-type/%6s}",
     (snpp->snp_policy == NETISR_POLICY_SOURCE) ? "source" :
     (snpp->snp_policy == NETISR_POLICY_FLOW) ? "flow" :
     (snpp->snp_policy == NETISR_POLICY_CPU) ? "cpu" : "-");
 netisr_dispatch_policy_to_string(snpp->snp_dispatch, tmp,
     sizeof(tmp));
 xo_emit(" {:policy/%8s}", tmp);
 xo_emit("   {:flags/%s%s%s}\n",
     (snpp->snp_flags & NETISR_SNP_FLAGS_M2CPUID) ? "C" : "-",
     (snpp->snp_flags & NETISR_SNP_FLAGS_DRAINEDCPU) ? "D" : "-",
     (snpp->snp_flags & NETISR_SNP_FLAGS_M2FLOW) ? "F" : "-");
}
