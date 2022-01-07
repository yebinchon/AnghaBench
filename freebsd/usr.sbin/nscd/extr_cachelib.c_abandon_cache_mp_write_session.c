
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cache_mp_write_session_ {TYPE_2__* parent_entry; } ;
struct TYPE_4__ {int ws_size; int ws_head; TYPE_1__* params; } ;
struct TYPE_3__ {scalar_t__ entry_type; } ;


 scalar_t__ CET_MULTIPART ;
 int TAILQ_REMOVE (int *,struct cache_mp_write_session_*,int ) ;
 int TRACE_IN (void (*) (struct cache_mp_write_session_*)) ;
 int TRACE_OUT (void (*) (struct cache_mp_write_session_*)) ;
 int assert (int) ;
 int destroy_cache_mp_write_session (struct cache_mp_write_session_*) ;
 int entries ;

void
abandon_cache_mp_write_session(struct cache_mp_write_session_ *ws)
{

 TRACE_IN(abandon_cache_mp_write_session);
 assert(ws != ((void*)0));
 assert(ws->parent_entry != ((void*)0));
 assert(ws->parent_entry->params->entry_type == CET_MULTIPART);

 TAILQ_REMOVE(&ws->parent_entry->ws_head, ws, entries);
 --ws->parent_entry->ws_size;

 destroy_cache_mp_write_session(ws);
 TRACE_OUT(abandon_cache_mp_write_session);
}
