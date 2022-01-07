
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_mp_read_session_ {int dummy; } ;


 int TRACE_IN (void (*) (struct cache_mp_read_session_*)) ;
 int TRACE_OUT (void (*) (struct cache_mp_read_session_*)) ;
 int assert (int ) ;
 int free (struct cache_mp_read_session_*) ;

__attribute__((used)) static void
destroy_cache_mp_read_session(struct cache_mp_read_session_ *rs)
{

 TRACE_IN(destroy_cache_mp_read_session);
 assert(rs != ((void*)0));
 free(rs);
 TRACE_OUT(destroy_cache_mp_read_session);
}
