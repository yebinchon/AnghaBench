
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_bridge {char const* bdg_basename; } ;
struct netmap_vp_adapter {struct nm_bridge* na_bdg; } ;



const char*
netmap_bdg_name(struct netmap_vp_adapter *vp)
{
 struct nm_bridge *b = vp->na_bdg;
 if (b == ((void*)0))
  return ((void*)0);
 return b->bdg_basename;
}
