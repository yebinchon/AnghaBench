
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct tentry_info {int value; scalar_t__ paddr; } ;
struct table_info {scalar_t__ data; } ;
struct ta_buf_ifidx {struct ifentry* ife; } ;
struct iftable_cfg {int count; int ch; int ii; scalar_t__ used; int main_ptr; } ;
struct ifidx {int dummy; } ;
struct TYPE_5__ {TYPE_1__* iface; } ;
struct ifentry {scalar_t__ linked; int value; TYPE_2__ ic; int no; } ;
struct TYPE_4__ {int ifindex; } ;


 int ENOENT ;
 int KASSERT (int,char*) ;
 int bdel (int *,int ,scalar_t__,int,int ) ;
 int compare_ifidx ;
 int ipfw_iface_del_notify (int ,TYPE_2__*) ;
 int ipfw_iface_unref (int ,TYPE_2__*) ;
 int ipfw_objhash_del (int ,int *) ;
 scalar_t__ ipfw_objhash_lookup_name (int ,int ,char*) ;

__attribute__((used)) static int
ta_del_ifidx(void *ta_state, struct table_info *ti, struct tentry_info *tei,
    void *ta_buf, uint32_t *pnum)
{
 struct iftable_cfg *icfg;
 struct ifentry *ife;
 struct ta_buf_ifidx *tb;
 char *ifname;
 uint16_t ifindex;
 int res;

 tb = (struct ta_buf_ifidx *)ta_buf;
 ifname = (char *)tei->paddr;
 icfg = (struct iftable_cfg *)ta_state;

 ife = (struct ifentry *)ipfw_objhash_lookup_name(icfg->ii, 0, ifname);

 if (ife == ((void*)0))
  return (ENOENT);

 if (ife->linked != 0) {

  ifindex = ife->ic.iface->ifindex;

  res = bdel(&ifindex, icfg->main_ptr, icfg->used,
      sizeof(struct ifidx), compare_ifidx);

  KASSERT(res == 1, ("index %d does not exist", ifindex));
  icfg->used--;
  ti->data = icfg->used;
  ife->linked = 0;
 }


 ipfw_objhash_del(icfg->ii, &ife->no);

 ipfw_iface_del_notify(icfg->ch, &ife->ic);
 ipfw_iface_unref(icfg->ch, &ife->ic);

 icfg->count--;
 tei->value = ife->value;

 tb->ife = ife;
 *pnum = 1;

 return (0);
}
