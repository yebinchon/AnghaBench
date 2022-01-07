
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {int * res; } ;
struct resource_list {int dummy; } ;


 int M_BUS ;
 int STAILQ_REMOVE (struct resource_list*,struct resource_list_entry*,int ,int ) ;
 int free (struct resource_list_entry*,int ) ;
 int link ;
 int panic (char*) ;
 int resource_list_entry ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int,int) ;

void
resource_list_delete(struct resource_list *rl, int type, int rid)
{
 struct resource_list_entry *rle = resource_list_find(rl, type, rid);

 if (rle) {
  if (rle->res != ((void*)0))
   panic("resource_list_delete: resource has not been released");
  STAILQ_REMOVE(rl, rle, resource_list_entry, link);
  free(rle, M_BUS);
 }
}
