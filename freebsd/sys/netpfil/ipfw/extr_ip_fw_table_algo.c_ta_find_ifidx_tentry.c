
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct table_info {int dummy; } ;
struct iftable_cfg {int ii; } ;
struct ifentry {int dummy; } ;
struct TYPE_5__ {char* iface; } ;
struct TYPE_6__ {TYPE_1__ k; } ;
typedef TYPE_2__ ipfw_obj_tentry ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ IF_NAMESIZE ;
 scalar_t__ ipfw_objhash_lookup_name (int ,int ,char*) ;
 scalar_t__ strnlen (char*,scalar_t__) ;
 int ta_dump_ifidx_tentry (void*,struct table_info*,struct ifentry*,TYPE_2__*) ;

__attribute__((used)) static int
ta_find_ifidx_tentry(void *ta_state, struct table_info *ti,
    ipfw_obj_tentry *tent)
{
 struct iftable_cfg *icfg;
 struct ifentry *ife;
 char *ifname;

 icfg = (struct iftable_cfg *)ta_state;
 ifname = tent->k.iface;

 if (strnlen(ifname, IF_NAMESIZE) == IF_NAMESIZE)
  return (EINVAL);

 ife = (struct ifentry *)ipfw_objhash_lookup_name(icfg->ii, 0, ifname);

 if (ife != ((void*)0)) {
  ta_dump_ifidx_tentry(ta_state, ti, ife, tent);
  return (0);
 }

 return (ENOENT);
}
