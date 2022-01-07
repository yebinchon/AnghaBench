
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigacts {int ps_mtx; int ps_refcnt; } ;


 int MTX_DEF ;
 int M_SUBPROC ;
 int M_WAITOK ;
 int M_ZERO ;
 struct sigacts* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int refcount_init (int *,int) ;

struct sigacts *
sigacts_alloc(void)
{
 struct sigacts *ps;

 ps = malloc(sizeof(struct sigacts), M_SUBPROC, M_WAITOK | M_ZERO);
 refcount_init(&ps->ps_refcnt, 1);
 mtx_init(&ps->ps_mtx, "sigacts", ((void*)0), MTX_DEF);
 return (ps);
}
