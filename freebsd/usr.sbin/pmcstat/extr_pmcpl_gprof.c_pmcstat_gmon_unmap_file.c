
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_gmonfile {int * pgf_gmondata; int pgf_ndatabytes; } ;


 int MS_SYNC ;
 int msync (int *,int ,int ) ;
 int munmap (int *,int ) ;

__attribute__((used)) static void
pmcstat_gmon_unmap_file(struct pmcstat_gmonfile *pgf)
{
 (void) msync(pgf->pgf_gmondata, pgf->pgf_ndatabytes,
     MS_SYNC);
 (void) munmap(pgf->pgf_gmondata, pgf->pgf_ndatabytes);
 pgf->pgf_gmondata = ((void*)0);
}
