
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cache_mp_write_session_ {scalar_t__ items_size; int items; TYPE_3__* parent_entry; } ;
struct cache_mp_data_item_ {size_t value_size; int * value; } ;
struct TYPE_5__ {scalar_t__ max_elemsize; } ;
struct TYPE_6__ {TYPE_2__ mp_params; TYPE_1__* params; } ;
struct TYPE_4__ {scalar_t__ entry_type; } ;


 scalar_t__ CET_MULTIPART ;
 int TAILQ_INSERT_TAIL (int *,struct cache_mp_data_item_*,int ) ;
 int TRACE_IN (int (*) (struct cache_mp_write_session_*,char*,size_t)) ;
 int TRACE_OUT (int (*) (struct cache_mp_write_session_*,char*,size_t)) ;
 int assert (int) ;
 struct cache_mp_data_item_* calloc (int,int) ;
 int entries ;
 int * malloc (size_t) ;
 int memcpy (int *,char*,size_t) ;

int
cache_mp_write(struct cache_mp_write_session_ *ws, char *data,
 size_t data_size)
{
 struct cache_mp_data_item_ *new_item;

 TRACE_IN(cache_mp_write);
 assert(ws != ((void*)0));
 assert(ws->parent_entry != ((void*)0));
 assert(ws->parent_entry->params->entry_type == CET_MULTIPART);

 if ((ws->parent_entry->mp_params.max_elemsize > 0) &&
  (ws->parent_entry->mp_params.max_elemsize == ws->items_size)) {
  TRACE_OUT(cache_mp_write);
  return (-1);
 }

 new_item = calloc(1,
  sizeof(*new_item));
 assert(new_item != ((void*)0));

 new_item->value = malloc(data_size);
 assert(new_item->value != ((void*)0));
 memcpy(new_item->value, data, data_size);
 new_item->value_size = data_size;

 TAILQ_INSERT_TAIL(&ws->items, new_item, entries);
 ++ws->items_size;

 TRACE_OUT(cache_mp_write);
 return (0);
}
