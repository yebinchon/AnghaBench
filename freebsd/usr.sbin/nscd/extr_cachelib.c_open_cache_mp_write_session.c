
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cache_mp_write_session_ {struct cache_mp_entry_* parent_entry; int items; } ;
struct TYPE_4__ {scalar_t__ max_sessions; } ;
struct cache_mp_entry_ {scalar_t__ ws_size; int ws_head; TYPE_2__ mp_params; } ;
struct cache_entry_ {TYPE_1__* params; } ;
struct TYPE_3__ {scalar_t__ entry_type; } ;


 scalar_t__ CET_MULTIPART ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct cache_mp_write_session_*,int ) ;
 int TRACE_IN (struct cache_mp_write_session_* (*) (struct cache_entry_*)) ;
 int TRACE_OUT (struct cache_mp_write_session_* (*) (struct cache_entry_*)) ;
 int assert (int) ;
 struct cache_mp_write_session_* calloc (int,int) ;
 int entries ;

struct cache_mp_write_session_ *
open_cache_mp_write_session(struct cache_entry_ *entry)
{
 struct cache_mp_entry_ *mp_entry;
 struct cache_mp_write_session_ *retval;

 TRACE_IN(open_cache_mp_write_session);
 assert(entry != ((void*)0));
 assert(entry->params->entry_type == CET_MULTIPART);
 mp_entry = (struct cache_mp_entry_ *)entry;

 if ((mp_entry->mp_params.max_sessions > 0) &&
  (mp_entry->ws_size == mp_entry->mp_params.max_sessions)) {
  TRACE_OUT(open_cache_mp_write_session);
  return (((void*)0));
 }

 retval = calloc(1,
  sizeof(*retval));
 assert(retval != ((void*)0));

 TAILQ_INIT(&retval->items);
 retval->parent_entry = mp_entry;

 TAILQ_INSERT_HEAD(&mp_entry->ws_head, retval, entries);
 ++mp_entry->ws_size;

 TRACE_OUT(open_cache_mp_write_session);
 return (retval);
}
