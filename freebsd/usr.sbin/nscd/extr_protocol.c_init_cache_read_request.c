
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_read_request {int dummy; } ;


 int TRACE_IN (void (*) (struct cache_read_request*)) ;
 int TRACE_OUT (void (*) (struct cache_read_request*)) ;
 int memset (struct cache_read_request*,int ,int) ;

void
init_cache_read_request(struct cache_read_request *read_request)
{

 TRACE_IN(init_cache_read_request);
 memset(read_request, 0, sizeof(struct cache_read_request));
 TRACE_OUT(init_cache_read_request);
}
