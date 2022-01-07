
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_mp_read_session_ {TYPE_1__* parent_entry; } ;
struct TYPE_2__ {scalar_t__ rs_size; int * pending_write_session; int * completed_write_session; int rs_head; } ;


 int TAILQ_REMOVE (int *,struct cache_mp_read_session_*,int ) ;
 int TRACE_IN (void (*) (struct cache_mp_read_session_*)) ;
 int TRACE_OUT (void (*) (struct cache_mp_read_session_*)) ;
 int assert (int ) ;
 int destroy_cache_mp_read_session (struct cache_mp_read_session_*) ;
 int destroy_cache_mp_write_session (int *) ;
 int entries ;

void
close_cache_mp_read_session(struct cache_mp_read_session_ *rs)
{

 TRACE_IN(close_cache_mp_read_session);
 assert(rs != ((void*)0));
 assert(rs->parent_entry != ((void*)0));

 TAILQ_REMOVE(&rs->parent_entry->rs_head, rs, entries);
 --rs->parent_entry->rs_size;

 if ((rs->parent_entry->rs_size == 0) &&
  (rs->parent_entry->pending_write_session != ((void*)0))) {
  destroy_cache_mp_write_session(
   rs->parent_entry->completed_write_session);
  rs->parent_entry->completed_write_session =
   rs->parent_entry->pending_write_session;
  rs->parent_entry->pending_write_session = ((void*)0);
 }

 destroy_cache_mp_read_session(rs);
 TRACE_OUT(close_cache_mp_read_session);
}
