
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_pfxrouter {int router; } ;


 int LIST_REMOVE (struct nd_pfxrouter*,int ) ;
 int M_IP6NDP ;
 int ND6_WLOCK_ASSERT () ;
 int defrouter_rele (int ) ;
 int free (struct nd_pfxrouter*,int ) ;
 int pfr_entry ;

__attribute__((used)) static void
pfxrtr_del(struct nd_pfxrouter *pfr)
{

 ND6_WLOCK_ASSERT();

 LIST_REMOVE(pfr, pfr_entry);
 defrouter_rele(pfr->router);
 free(pfr, M_IP6NDP);
}
