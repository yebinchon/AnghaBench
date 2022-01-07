
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_mp_write_session_ {struct cache_mp_write_session_* value; int items; } ;
struct cache_mp_data_item_ {struct cache_mp_data_item_* value; int items; } ;


 int TAILQ_EMPTY (int *) ;
 struct cache_mp_write_session_* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct cache_mp_write_session_*,int ) ;
 int TRACE_IN (void (*) (struct cache_mp_write_session_*)) ;
 int TRACE_OUT (void (*) (struct cache_mp_write_session_*)) ;
 int assert (int ) ;
 int entries ;
 int free (struct cache_mp_write_session_*) ;

__attribute__((used)) static void
destroy_cache_mp_write_session(struct cache_mp_write_session_ *ws)
{

 struct cache_mp_data_item_ *data_item;

 TRACE_IN(destroy_cache_mp_write_session);
 assert(ws != ((void*)0));
 while (!TAILQ_EMPTY(&ws->items)) {
  data_item = TAILQ_FIRST(&ws->items);
  TAILQ_REMOVE(&ws->items, data_item, entries);
  free(data_item->value);
  free(data_item);
 }

 free(ws);
 TRACE_OUT(destroy_cache_mp_write_session);
}
