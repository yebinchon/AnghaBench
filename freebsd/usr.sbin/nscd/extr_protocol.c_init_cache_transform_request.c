
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_transform_request {int dummy; } ;


 int TRACE_IN (void (*) (struct cache_transform_request*)) ;
 int TRACE_OUT (void (*) (struct cache_transform_request*)) ;
 int memset (struct cache_transform_request*,int ,int) ;

void
init_cache_transform_request(struct cache_transform_request *transform_request)
{

 TRACE_IN(init_cache_transform_request);
 memset(transform_request, 0, sizeof(struct cache_transform_request));
 TRACE_OUT(init_cache_transform_request);
}
