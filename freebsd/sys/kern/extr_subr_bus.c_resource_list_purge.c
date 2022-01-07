
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {scalar_t__ res; int rid; int type; } ;
struct resource_list {int dummy; } ;


 int M_BUS ;
 struct resource_list_entry* STAILQ_FIRST (struct resource_list*) ;
 int STAILQ_REMOVE_HEAD (struct resource_list*,int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int free (struct resource_list_entry*,int ) ;
 int link ;
 int rman_get_device (scalar_t__) ;

void
resource_list_purge(struct resource_list *rl)
{
 struct resource_list_entry *rle;

 while ((rle = STAILQ_FIRST(rl)) != ((void*)0)) {
  if (rle->res)
   bus_release_resource(rman_get_device(rle->res),
       rle->type, rle->rid, rle->res);
  STAILQ_REMOVE_HEAD(rl, link);
  free(rle, M_BUS);
 }
}
