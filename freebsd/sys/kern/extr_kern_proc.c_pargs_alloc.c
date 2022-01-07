
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pargs {int ar_length; int ar_ref; } ;


 int M_PARGS ;
 int M_WAITOK ;
 struct pargs* malloc (int,int ,int ) ;
 int refcount_init (int *,int) ;

struct pargs *
pargs_alloc(int len)
{
 struct pargs *pa;

 pa = malloc(sizeof(struct pargs) + len, M_PARGS,
  M_WAITOK);
 refcount_init(&pa->ar_ref, 1);
 pa->ar_length = len;
 return (pa);
}
