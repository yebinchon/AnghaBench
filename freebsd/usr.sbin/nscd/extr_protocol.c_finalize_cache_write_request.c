
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_write_request {int data; int cache_key; int entry; } ;


 int TRACE_IN (void (*) (struct cache_write_request*)) ;
 int TRACE_OUT (void (*) (struct cache_write_request*)) ;
 int free (int ) ;

void
finalize_cache_write_request(struct cache_write_request *write_request)
{

 TRACE_IN(finalize_cache_write_request);
 free(write_request->entry);
 free(write_request->cache_key);
 free(write_request->data);
 TRACE_OUT(finalize_cache_write_request);
}
