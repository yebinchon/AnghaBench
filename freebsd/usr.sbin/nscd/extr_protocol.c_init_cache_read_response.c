
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_read_response {int dummy; } ;


 int TRACE_IN (void (*) (struct cache_read_response*)) ;
 int TRACE_OUT (void (*) (struct cache_read_response*)) ;
 int memset (struct cache_read_response*,int ,int) ;

void
init_cache_read_response(struct cache_read_response *read_response)
{

 TRACE_IN(init_cache_read_response);
 memset(read_response, 0, sizeof(struct cache_read_response));
 TRACE_OUT(init_cache_read_response);
}
