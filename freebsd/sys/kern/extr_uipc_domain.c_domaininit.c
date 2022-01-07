
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KASSERT (int,char*) ;
 int callout_init (int *,int) ;
 int dom_mtx ;
 int domain_init_status ;
 int max_linkhdr ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pffast_callout ;
 int pfslow_callout ;

__attribute__((used)) static void
domaininit(void *dummy)
{

 if (max_linkhdr < 16)
  max_linkhdr = 16;

 callout_init(&pffast_callout, 1);
 callout_init(&pfslow_callout, 1);

 mtx_lock(&dom_mtx);
 KASSERT(domain_init_status == 0, ("domaininit called too late!"));
 domain_init_status = 1;
 mtx_unlock(&dom_mtx);
}
