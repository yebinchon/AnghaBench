
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plimit {int pl_refcnt; } ;


 int M_PLIMIT ;
 int M_WAITOK ;
 struct plimit* malloc (int,int ,int ) ;
 int refcount_init (int *,int) ;

struct plimit *
lim_alloc()
{
 struct plimit *limp;

 limp = malloc(sizeof(struct plimit), M_PLIMIT, M_WAITOK);
 refcount_init(&limp->pl_refcnt, 1);
 return (limp);
}
