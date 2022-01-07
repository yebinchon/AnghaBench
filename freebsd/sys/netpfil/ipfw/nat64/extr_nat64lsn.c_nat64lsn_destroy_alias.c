
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat64lsn_pg {int dummy; } ;
struct nat64lsn_cfg {int dummy; } ;
struct nat64lsn_alias {int * icmp; int icmp_chunkmask; int * udp; int udp_chunkmask; int * tcp; int tcp_chunkmask; int portgroups; } ;


 int ALIAS_LOCK_DESTROY (struct nat64lsn_alias*) ;
 int CK_SLIST_EMPTY (int *) ;
 struct nat64lsn_pg* CK_SLIST_FIRST (int *) ;
 int CK_SLIST_REMOVE_HEAD (int *,int ) ;
 scalar_t__ ISSET32 (int ,int) ;
 int entries ;
 int nat64lsn_destroy_pg (struct nat64lsn_pg*) ;
 int nat64lsn_pgchunk_zone ;
 int uma_zfree (int ,int ) ;

__attribute__((used)) static void
nat64lsn_destroy_alias(struct nat64lsn_cfg *cfg,
    struct nat64lsn_alias *alias)
{
 struct nat64lsn_pg *pg;
 int i;

 while (!CK_SLIST_EMPTY(&alias->portgroups)) {
  pg = CK_SLIST_FIRST(&alias->portgroups);
  CK_SLIST_REMOVE_HEAD(&alias->portgroups, entries);
  nat64lsn_destroy_pg(pg);
 }
 for (i = 0; i < 32; i++) {
  if (ISSET32(alias->tcp_chunkmask, i))
   uma_zfree(nat64lsn_pgchunk_zone, alias->tcp[i]);
  if (ISSET32(alias->udp_chunkmask, i))
   uma_zfree(nat64lsn_pgchunk_zone, alias->udp[i]);
  if (ISSET32(alias->icmp_chunkmask, i))
   uma_zfree(nat64lsn_pgchunk_zone, alias->icmp[i]);
 }
 ALIAS_LOCK_DESTROY(alias);
}
