
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_write_response {int dummy; } ;


 int TRACE_IN (void (*) (struct cache_write_response*)) ;
 int TRACE_OUT (void (*) (struct cache_write_response*)) ;
 int memset (struct cache_write_response*,int ,int) ;

void
init_cache_write_response(struct cache_write_response *write_response)
{

 TRACE_IN(init_cache_write_response);
 memset(write_response, 0, sizeof(struct cache_write_response));
 TRACE_OUT(init_cache_write_response);
}
