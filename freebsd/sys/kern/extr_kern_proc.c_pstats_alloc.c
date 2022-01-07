
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstats {int dummy; } ;


 int M_SUBPROC ;
 int M_WAITOK ;
 int M_ZERO ;
 struct pstats* malloc (int,int ,int) ;

struct pstats *
pstats_alloc(void)
{

 return (malloc(sizeof(struct pstats), M_SUBPROC, M_ZERO|M_WAITOK));
}
