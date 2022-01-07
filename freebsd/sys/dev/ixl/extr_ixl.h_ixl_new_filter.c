
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixl_vsi {int ftl; } ;
struct ixl_mac_filter {int flags; int vlan; int macaddr; } ;
typedef int s16 ;


 int ETHER_ADDR_LEN ;
 int IXL_FILTER_ADD ;
 int IXL_FILTER_USED ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SLIST_INSERT_HEAD (int *,struct ixl_mac_filter*,int ) ;
 int bcopy (int const*,int ,int ) ;
 struct ixl_mac_filter* malloc (int,int ,int) ;
 int next ;

__attribute__((used)) static inline struct ixl_mac_filter *
ixl_new_filter(struct ixl_vsi *vsi, const u8 *macaddr, s16 vlan)
{
 struct ixl_mac_filter *f;


 f = malloc(sizeof(struct ixl_mac_filter),
     M_DEVBUF, M_NOWAIT | M_ZERO);
 if (f) {
  SLIST_INSERT_HEAD(&vsi->ftl, f, next);
  bcopy(macaddr, f->macaddr, ETHER_ADDR_LEN);
  f->vlan = vlan;
  f->flags |= (IXL_FILTER_ADD | IXL_FILTER_USED);
 }

 return (f);
}
