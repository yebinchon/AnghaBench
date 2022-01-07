
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KASSERT (int,char*) ;
 int callout_reset (int *,int,int ,int *) ;
 int dom_mtx ;
 int domain_init_status ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pffast_callout ;
 int pffasttimo ;
 int pfslow_callout ;
 int pfslowtimo ;

__attribute__((used)) static void
domainfinalize(void *dummy)
{

 mtx_lock(&dom_mtx);
 KASSERT(domain_init_status == 1, ("domainfinalize called too late!"));
 domain_init_status = 2;
 mtx_unlock(&dom_mtx);

 callout_reset(&pffast_callout, 1, pffasttimo, ((void*)0));
 callout_reset(&pfslow_callout, 1, pfslowtimo, ((void*)0));
}
