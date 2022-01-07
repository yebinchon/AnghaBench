
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMCSTAT_NHASH ;
 int STAILQ_INIT (int *) ;
 int pmcpl_ct_callid ;
 int pmcpl_ct_node_allocate () ;
 int * pmcpl_ct_node_hash ;
 int pmcpl_ct_root ;
 int pmcpl_ct_samples_init (int *) ;

int
pmcpl_ct_init(void)
{
 int i;

 pmcpl_ct_root = pmcpl_ct_node_allocate();

 for (i = 0; i < PMCSTAT_NHASH; i++)
  STAILQ_INIT(&pmcpl_ct_node_hash[i]);

 pmcpl_ct_samples_init(&pmcpl_ct_callid);

 return (0);
}
