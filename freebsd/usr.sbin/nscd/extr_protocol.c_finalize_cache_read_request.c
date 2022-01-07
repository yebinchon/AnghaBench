
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_read_request {int cache_key; int entry; } ;


 int TRACE_IN (void (*) (struct cache_read_request*)) ;
 int TRACE_OUT (void (*) (struct cache_read_request*)) ;
 int free (int ) ;

void
finalize_cache_read_request(struct cache_read_request *read_request)
{

 TRACE_IN(finalize_cache_read_request);
 free(read_request->entry);
 free(read_request->cache_key);
 TRACE_OUT(finalize_cache_read_request);
}
