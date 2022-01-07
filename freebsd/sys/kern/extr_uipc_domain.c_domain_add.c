
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain {char* dom_name; struct domain* dom_next; } ;


 int KASSERT (int,char*) ;
 int dom_mtx ;
 int domain_init_status ;
 struct domain* domains ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,char*) ;

void
domain_add(void *data)
{
 struct domain *dp;

 dp = (struct domain *)data;
 mtx_lock(&dom_mtx);
 dp->dom_next = domains;
 domains = dp;

 KASSERT(domain_init_status >= 1,
     ("attempt to domain_add(%s) before domaininit()",
     dp->dom_name));

 if (domain_init_status < 1)
  printf("WARNING: attempt to domain_add(%s) before "
      "domaininit()\n", dp->dom_name);






 if (domain_init_status >= 2)
  printf("WARNING: attempt to domain_add(%s) after "
      "domainfinalize()\n", dp->dom_name);

 mtx_unlock(&dom_mtx);
}
