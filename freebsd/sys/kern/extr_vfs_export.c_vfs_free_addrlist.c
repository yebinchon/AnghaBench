
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct TYPE_2__ {struct ucred* netc_anon; } ;
struct netexport {TYPE_1__ ne_defexported; int * ne6; int * ne4; } ;


 int crfree (struct ucred*) ;
 int vfs_free_addrlist_af (int **) ;

__attribute__((used)) static void
vfs_free_addrlist(struct netexport *nep)
{
 struct ucred *cred;

 if (nep->ne4 != ((void*)0))
  vfs_free_addrlist_af(&nep->ne4);
 if (nep->ne6 != ((void*)0))
  vfs_free_addrlist_af(&nep->ne6);

 cred = nep->ne_defexported.netc_anon;
 if (cred != ((void*)0))
  crfree(cred);

}
