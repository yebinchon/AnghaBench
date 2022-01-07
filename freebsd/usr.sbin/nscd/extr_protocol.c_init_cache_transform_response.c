
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_transform_response {int dummy; } ;


 int TRACE_IN (int ) ;
 int TRACE_OUT (int ) ;
 int init_cache_transform_request ;
 int memset (struct cache_transform_response*,int ,int) ;

void
init_cache_transform_response(
 struct cache_transform_response *transform_response)
{

 TRACE_IN(init_cache_transform_request);
 memset(transform_response, 0, sizeof(struct cache_transform_response));
 TRACE_OUT(init_cache_transform_request);
}
