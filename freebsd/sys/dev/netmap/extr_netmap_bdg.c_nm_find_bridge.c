
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct nm_hash_ent {int dummy; } ;
struct netmap_bdg_ops {int name; } ;
struct nm_bridge {int bdg_flags; scalar_t__ bdg_active_ports; int bdg_namelen; int* bdg_port_index; int * ht; int * private_data; struct netmap_bdg_ops bdg_saved_ops; struct netmap_bdg_ops bdg_ops; int bdg_basename; } ;


 int NMG_LOCK_ASSERT () ;
 int NM_BDG_ACTIVE ;
 int NM_BDG_HASH ;
 int NM_BDG_MAXPORTS ;
 int NM_BNS_GET (struct nm_bridge*) ;
 int netmap_bns_getbridges (struct nm_bridge**,int*) ;
 int nm_bdg_name_validate (char const*,int ) ;
 int * nm_os_malloc (int) ;
 int nm_prdis (char*,int,scalar_t__,...) ;
 int nm_prerr (char*,...) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int) ;
 int strncpy (int ,char const*,int) ;

struct nm_bridge *
nm_find_bridge(const char *name, int create, struct netmap_bdg_ops *ops)
{
 int i, namelen;
 struct nm_bridge *b = ((void*)0), *bridges;
 u_int num_bridges;

 NMG_LOCK_ASSERT();

 netmap_bns_getbridges(&bridges, &num_bridges);

 namelen = nm_bdg_name_validate(name,
   (ops != ((void*)0) ? strlen(ops->name) : 0));
 if (namelen < 0) {
  nm_prerr("invalid bridge name %s", name ? name : ((void*)0));
  return ((void*)0);
 }


 for (i = 0; i < num_bridges; i++) {
  struct nm_bridge *x = bridges + i;

  if ((x->bdg_flags & NM_BDG_ACTIVE) + x->bdg_active_ports == 0) {
   if (create && b == ((void*)0))
    b = x;
  } else if (x->bdg_namelen != namelen) {
   continue;
  } else if (strncmp(name, x->bdg_basename, namelen) == 0) {
   nm_prdis("found '%.*s' at %d", namelen, name, i);
   b = x;
   break;
  }
 }
 if (i == num_bridges && b) {

  nm_prdis("create new bridge %s with ports %d", b->bdg_basename,
   b->bdg_active_ports);
  b->ht = nm_os_malloc(sizeof(struct nm_hash_ent) * NM_BDG_HASH);
  if (b->ht == ((void*)0)) {
   nm_prerr("failed to allocate hash table");
   return ((void*)0);
  }
  strncpy(b->bdg_basename, name, namelen);
  b->bdg_namelen = namelen;
  b->bdg_active_ports = 0;
  for (i = 0; i < NM_BDG_MAXPORTS; i++)
   b->bdg_port_index[i] = i;

  b->bdg_ops = b->bdg_saved_ops = *ops;
  b->private_data = b->ht;
  b->bdg_flags = 0;
  NM_BNS_GET(b);
 }
 return b;
}
