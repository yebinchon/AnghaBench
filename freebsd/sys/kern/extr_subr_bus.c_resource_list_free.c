
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {scalar_t__ res; } ;
struct resource_list {int dummy; } ;


 int M_BUS ;
 struct resource_list_entry* STAILQ_FIRST (struct resource_list*) ;
 int STAILQ_REMOVE_HEAD (struct resource_list*,int ) ;
 int free (struct resource_list_entry*,int ) ;
 int link ;
 int panic (char*) ;

void
resource_list_free(struct resource_list *rl)
{
 struct resource_list_entry *rle;

 while ((rle = STAILQ_FIRST(rl)) != ((void*)0)) {
  if (rle->res)
   panic("resource_list_free: resource entry is busy");
  STAILQ_REMOVE_HEAD(rl, link);
  free(rle, M_BUS);
 }
}
