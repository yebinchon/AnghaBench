
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct scc_mode {struct scc_chan* m_chan; } ;
struct scc_chan {int ch_rlist; } ;
struct resource_list_entry {struct resource* res; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef scalar_t__ device_t ;


 int RMAN_IS_DEFAULT_RANGE (int ,int ) ;
 struct scc_mode* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct resource_list_entry* resource_list_find (int *,int,int ) ;

struct resource *
scc_bus_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct resource_list_entry *rle;
 struct scc_chan *ch;
 struct scc_mode *m;

 if (device_get_parent(child) != dev)
  return (((void*)0));


 if (!RMAN_IS_DEFAULT_RANGE(start, end))
  return (((void*)0));

 m = device_get_ivars(child);
 ch = m->m_chan;
 rle = resource_list_find(&ch->ch_rlist, type, 0);
 if (rle == ((void*)0))
  return (((void*)0));
 *rid = 0;
 return (rle->res);
}
