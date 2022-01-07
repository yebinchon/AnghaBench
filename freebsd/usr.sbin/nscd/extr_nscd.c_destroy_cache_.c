
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cache ;


 int TRACE_IN (void (*) (int )) ;
 int TRACE_OUT (void (*) (int )) ;
 int destroy_cache (int ) ;

__attribute__((used)) static void
destroy_cache_(cache the_cache)
{
 TRACE_IN(destroy_cache_);
 destroy_cache(the_cache);
 TRACE_OUT(destroy_cache_);
}
