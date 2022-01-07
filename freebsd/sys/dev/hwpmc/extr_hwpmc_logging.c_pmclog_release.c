
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_owner {int dummy; } ;


 int pmclog_release_flags (struct pmc_owner*,int) ;

__attribute__((used)) static void
pmclog_release(struct pmc_owner *po)
{

 pmclog_release_flags(po, 1);
}
