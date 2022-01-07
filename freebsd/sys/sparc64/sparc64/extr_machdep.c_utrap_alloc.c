
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_utrap {int ut_refcnt; } ;


 int M_SUBPROC ;
 int M_WAITOK ;
 int M_ZERO ;
 struct md_utrap* malloc (int,int ,int) ;

struct md_utrap *
utrap_alloc(void)
{
 struct md_utrap *ut;

 ut = malloc(sizeof(struct md_utrap), M_SUBPROC, M_WAITOK | M_ZERO);
 ut->ut_refcnt = 1;
 return (ut);
}
