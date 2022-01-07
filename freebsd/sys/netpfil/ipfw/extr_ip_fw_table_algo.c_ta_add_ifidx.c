
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tentry_info {int value; int flags; scalar_t__ paddr; } ;
struct table_info {int dummy; } ;
struct ta_buf_ifidx {struct ifentry* ife; } ;
struct ipfw_iface {scalar_t__ resolved; int ifindex; } ;
struct iftable_cfg {int count; int ch; int ii; } ;
struct ifidx {int value; } ;
struct TYPE_2__ {struct ipfw_iface* iface; } ;
struct ifentry {int value; TYPE_1__ ic; int no; struct iftable_cfg* icfg; } ;


 int EEXIST ;
 int EFBIG ;
 int TEI_FLAGS_DONTADD ;
 int TEI_FLAGS_UPDATE ;
 int TEI_FLAGS_UPDATED ;
 struct ifidx* ifidx_find (struct table_info*,int *) ;
 int ipfw_iface_add_notify (int ,TYPE_1__*) ;
 int ipfw_objhash_add (int ,int *) ;
 scalar_t__ ipfw_objhash_lookup_name (int ,int ,char*) ;

__attribute__((used)) static int
ta_add_ifidx(void *ta_state, struct table_info *ti, struct tentry_info *tei,
    void *ta_buf, uint32_t *pnum)
{
 struct iftable_cfg *icfg;
 struct ifentry *ife, *tmp;
 struct ta_buf_ifidx *tb;
 struct ipfw_iface *iif;
 struct ifidx *ifi;
 char *ifname;
 uint32_t value;

 tb = (struct ta_buf_ifidx *)ta_buf;
 ifname = (char *)tei->paddr;
 icfg = (struct iftable_cfg *)ta_state;
 ife = tb->ife;

 ife->icfg = icfg;
 ife->value = tei->value;

 tmp = (struct ifentry *)ipfw_objhash_lookup_name(icfg->ii, 0, ifname);

 if (tmp != ((void*)0)) {
  if ((tei->flags & TEI_FLAGS_UPDATE) == 0)
   return (EEXIST);


  value = tmp->value;
  tmp->value = tei->value;
  tei->value = value;

  iif = tmp->ic.iface;
  if (iif->resolved != 0) {

   ifi = ifidx_find(ti, &iif->ifindex);
   ifi->value = ife->value;
  }


  tei->flags |= TEI_FLAGS_UPDATED;
  *pnum = 0;
  return (0);
 }

 if ((tei->flags & TEI_FLAGS_DONTADD) != 0)
  return (EFBIG);


 ipfw_objhash_add(icfg->ii, &ife->no);


 ipfw_iface_add_notify(icfg->ch, &ife->ic);
 icfg->count++;

 tb->ife = ((void*)0);
 *pnum = 1;

 return (0);
}
