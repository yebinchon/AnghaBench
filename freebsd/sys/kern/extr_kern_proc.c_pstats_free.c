
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstats {int dummy; } ;


 int M_SUBPROC ;
 int free (struct pstats*,int ) ;

void
pstats_free(struct pstats *ps)
{

 free(ps, M_SUBPROC);
}
