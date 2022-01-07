
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int PMCSTAT_NHASH ;
 int * pmcstat_cgnode_hash ;
 scalar_t__ pmcstat_cgnode_hash_count ;
 int * pmcstat_previous_filename_printed ;

int
pmcpl_cg_init(void)
{
 int i;

 pmcstat_cgnode_hash_count = 0;
 pmcstat_previous_filename_printed = ((void*)0);

 for (i = 0; i < PMCSTAT_NHASH; i++) {
  LIST_INIT(&pmcstat_cgnode_hash[i]);
 }

 return (0);
}
