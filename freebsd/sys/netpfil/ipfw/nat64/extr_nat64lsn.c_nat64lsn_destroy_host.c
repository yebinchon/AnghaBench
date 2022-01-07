
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nat64lsn_host {int states_hash; TYPE_1__* alias; int aliases; } ;
struct nat64lsn_aliaslink {int states_hash; TYPE_1__* alias; int aliases; } ;
struct TYPE_3__ {int hosts_count; int hosts; } ;


 int ALIAS_LOCK (TYPE_1__*) ;
 int ALIAS_UNLOCK (TYPE_1__*) ;
 int CK_SLIST_EMPTY (int *) ;
 struct nat64lsn_host* CK_SLIST_FIRST (int *) ;
 int CK_SLIST_REMOVE (int *,struct nat64lsn_host*,int ,int ) ;
 int CK_SLIST_REMOVE_HEAD (int *,int ) ;
 int HOST_LOCK_DESTROY (struct nat64lsn_host*) ;
 int M_NAT64LSN ;
 int alias_entries ;
 int free (int ,int ) ;
 int host_entries ;
 int nat64lsn_aliaslink ;
 int nat64lsn_aliaslink_zone ;
 int nat64lsn_host_zone ;
 int uma_zfree (int ,struct nat64lsn_host*) ;

__attribute__((used)) static void
nat64lsn_destroy_host(struct nat64lsn_host *host)
{
 struct nat64lsn_aliaslink *link;

 while (!CK_SLIST_EMPTY(&host->aliases)) {
  link = CK_SLIST_FIRST(&host->aliases);
  CK_SLIST_REMOVE_HEAD(&host->aliases, host_entries);

  ALIAS_LOCK(link->alias);
  CK_SLIST_REMOVE(&link->alias->hosts, link,
      nat64lsn_aliaslink, alias_entries);
  link->alias->hosts_count--;
  ALIAS_UNLOCK(link->alias);

  uma_zfree(nat64lsn_aliaslink_zone, link);
 }
 HOST_LOCK_DESTROY(host);
 free(host->states_hash, M_NAT64LSN);
 uma_zfree(nat64lsn_host_zone, host);
}
