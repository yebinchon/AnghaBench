
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ypldap_addr {int dummy; } ;
struct idm {int idm_addr; } ;


 int TAILQ_EMPTY (int *) ;
 struct ypldap_addr* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ypldap_addr*,int ) ;
 int free (struct ypldap_addr*) ;
 int next ;

int
client_addr_free(struct idm *idm)
{
        struct ypldap_addr *h;

 while (!TAILQ_EMPTY(&idm->idm_addr)) {
  h = TAILQ_FIRST(&idm->idm_addr);
  TAILQ_REMOVE(&idm->idm_addr, h, next);
  free(h);
 }

 return (0);
}
