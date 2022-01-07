
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_mode {struct scc_chan* m_chan; } ;
struct scc_chan {int ch_rlist; } ;
struct resource_list_entry {int count; int start; } ;
typedef int rman_res_t ;
typedef scalar_t__ device_t ;


 int EINVAL ;
 struct scc_mode* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct resource_list_entry* resource_list_find (int *,int,int) ;

int
scc_bus_get_resource(device_t dev, device_t child, int type, int rid,
    rman_res_t *startp, rman_res_t *countp)
{
 struct resource_list_entry *rle;
 struct scc_chan *ch;
 struct scc_mode *m;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 m = device_get_ivars(child);
 ch = m->m_chan;
 rle = resource_list_find(&ch->ch_rlist, type, rid);
 if (rle == ((void*)0))
  return (EINVAL);

 if (startp != ((void*)0))
  *startp = rle->start;
 if (countp != ((void*)0))
  *countp = rle->count;
 return (0);
}
