
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_defrouter {int refcnt; } ;


 int M_IP6NDP ;
 int free (struct nd_defrouter*,int ) ;
 scalar_t__ refcount_release (int *) ;

void
defrouter_rele(struct nd_defrouter *dr)
{

 if (refcount_release(&dr->refcnt))
  free(dr, M_IP6NDP);
}
