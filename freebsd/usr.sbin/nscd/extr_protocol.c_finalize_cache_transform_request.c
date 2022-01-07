
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_transform_request {int entry; } ;


 int TRACE_IN (void (*) (struct cache_transform_request*)) ;
 int TRACE_OUT (void (*) (struct cache_transform_request*)) ;
 int free (int ) ;

void
finalize_cache_transform_request(
 struct cache_transform_request *transform_request)
{

 TRACE_IN(finalize_cache_transform_request);
 free(transform_request->entry);
 TRACE_OUT(finalize_cache_transform_request);
}
