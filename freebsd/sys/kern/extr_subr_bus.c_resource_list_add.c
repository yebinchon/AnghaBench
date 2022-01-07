
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {int type; int rid; void* count; void* end; void* start; int * res; scalar_t__ flags; } ;
struct resource_list {int dummy; } ;
typedef void* rman_res_t ;


 int M_BUS ;
 int M_NOWAIT ;
 int STAILQ_INSERT_TAIL (struct resource_list*,struct resource_list_entry*,int ) ;
 int link ;
 struct resource_list_entry* malloc (int,int ,int ) ;
 int panic (char*) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int,int) ;

struct resource_list_entry *
resource_list_add(struct resource_list *rl, int type, int rid,
    rman_res_t start, rman_res_t end, rman_res_t count)
{
 struct resource_list_entry *rle;

 rle = resource_list_find(rl, type, rid);
 if (!rle) {
  rle = malloc(sizeof(struct resource_list_entry), M_BUS,
      M_NOWAIT);
  if (!rle)
   panic("resource_list_add: can't record entry");
  STAILQ_INSERT_TAIL(rl, rle, link);
  rle->type = type;
  rle->rid = rid;
  rle->res = ((void*)0);
  rle->flags = 0;
 }

 if (rle->res)
  panic("resource_list_add: resource entry is busy");

 rle->start = start;
 rle->end = end;
 rle->count = count;
 return (rle);
}
