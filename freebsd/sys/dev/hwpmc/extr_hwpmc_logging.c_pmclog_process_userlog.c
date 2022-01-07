
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmclog_userdata {int dummy; } ;
struct pmc_owner {int dummy; } ;
struct pmc_op_writelog {int pm_userdata; } ;


 int LOG ;
 int PMCDBG2 (int ,int ,int,char*,struct pmc_owner*,int ) ;
 int PMCLOG_DESPATCH (struct pmc_owner*) ;
 int PMCLOG_EMIT32 (int ) ;
 int PMCLOG_RESERVE_WITH_ERROR (struct pmc_owner*,int ,int) ;
 int USERDATA ;
 int WRI ;

int
pmclog_process_userlog(struct pmc_owner *po, struct pmc_op_writelog *wl)
{
 int error;

 PMCDBG2(LOG,WRI,1, "writelog po=%p ud=0x%x", po, wl->pm_userdata);

 error = 0;

 PMCLOG_RESERVE_WITH_ERROR(po, USERDATA,
     sizeof(struct pmclog_userdata));
 PMCLOG_EMIT32(wl->pm_userdata);
 PMCLOG_DESPATCH(po);

 error:
 return (error);
}
