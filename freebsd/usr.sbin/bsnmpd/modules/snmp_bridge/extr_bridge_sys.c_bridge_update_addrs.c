
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tp_entry {int flags; } ;
struct ifbareq {int ifba_dst; } ;
struct bridge_if {int addrs_age; } ;
typedef int int32_t ;


 int BA_FOUND ;
 struct tp_entry* bridge_addrs_bif_first (struct bridge_if*) ;
 struct tp_entry* bridge_addrs_bif_next (struct tp_entry*) ;
 struct tp_entry* bridge_addrs_find (int ,struct bridge_if*) ;
 int bridge_addrs_getinfo_ifalist (struct bridge_if*,struct ifbareq**) ;
 int bridge_addrs_info_ifaddrlist (struct ifbareq*,struct tp_entry*) ;
 int bridge_addrs_remove (struct tp_entry*,struct bridge_if*) ;
 struct tp_entry* bridge_new_addrs (int ,struct bridge_if*) ;
 int free (struct ifbareq*) ;
 int time (int *) ;

int
bridge_update_addrs(struct bridge_if *bif)
{
 int added, updated;
 uint32_t i;
 int32_t buf_len;
 struct tp_entry *te, *te_next;
 struct ifbareq *addr_req_buf, *addr_req;

 if ((buf_len = bridge_addrs_getinfo_ifalist(bif, &addr_req_buf)) < 0)
  return (-1);

 added = updated = 0;


 for (i = 0; i < buf_len / sizeof(struct ifbareq); i++) {
  addr_req = addr_req_buf + i;

  if ((te = bridge_addrs_find(addr_req->ifba_dst, bif)) == ((void*)0)) {
   added++;

   if ((te = bridge_new_addrs(addr_req->ifba_dst, bif))
       == ((void*)0))
    continue;
  } else
   updated++;

  bridge_addrs_info_ifaddrlist(addr_req, te);
  te-> flags |= 0x01;
 }
 free(addr_req_buf);

 for (te = bridge_addrs_bif_first(bif); te != ((void*)0); te = te_next) {
  te_next = bridge_addrs_bif_next(te);

  if ((te-> flags & 0x01) == 0)
   bridge_addrs_remove(te, bif);
  else
   te-> flags &= ~0x01;
 }


 bif->addrs_age = time(((void*)0));
 return (updated + added);
}
