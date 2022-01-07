
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int DPFPRINTF (int ,char*) ;
 int PF_DEBUG_MISC ;
 int PF_RULESET_BINAT ;
 int PF_RULESET_FILTER ;
 int PF_RULESET_NAT ;
 int PF_RULESET_RDR ;
 int PF_RULESET_SCRUB ;
 int pf_begin_altq (int *) ;
 int pf_begin_rules (int *,int ,char*) ;
 int pf_clear_srcnodes (int *) ;
 int pf_clear_states () ;
 int pf_clear_tables () ;
 int pf_commit_altq (int ) ;
 int pf_commit_rules (int ,int ,char*) ;

__attribute__((used)) static int
shutdown_pf(void)
{
 int error = 0;
 u_int32_t t[5];
 char nn = '\0';

 do {
  if ((error = pf_begin_rules(&t[0], PF_RULESET_SCRUB, &nn))
      != 0) {
   DPFPRINTF(PF_DEBUG_MISC, ("shutdown_pf: SCRUB\n"));
   break;
  }
  if ((error = pf_begin_rules(&t[1], PF_RULESET_FILTER, &nn))
      != 0) {
   DPFPRINTF(PF_DEBUG_MISC, ("shutdown_pf: FILTER\n"));
   break;
  }
  if ((error = pf_begin_rules(&t[2], PF_RULESET_NAT, &nn))
      != 0) {
   DPFPRINTF(PF_DEBUG_MISC, ("shutdown_pf: NAT\n"));
   break;
  }
  if ((error = pf_begin_rules(&t[3], PF_RULESET_BINAT, &nn))
      != 0) {
   DPFPRINTF(PF_DEBUG_MISC, ("shutdown_pf: BINAT\n"));
   break;
  }
  if ((error = pf_begin_rules(&t[4], PF_RULESET_RDR, &nn))
      != 0) {
   DPFPRINTF(PF_DEBUG_MISC, ("shutdown_pf: RDR\n"));
   break;
  }


  pf_commit_rules(t[0], PF_RULESET_SCRUB, &nn);
  pf_commit_rules(t[1], PF_RULESET_FILTER, &nn);
  pf_commit_rules(t[2], PF_RULESET_NAT, &nn);
  pf_commit_rules(t[3], PF_RULESET_BINAT, &nn);
  pf_commit_rules(t[4], PF_RULESET_RDR, &nn);

  if ((error = pf_clear_tables()) != 0)
   break;
  pf_clear_states();

  pf_clear_srcnodes(((void*)0));



 } while(0);

 return (error);
}
