
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_map_request {size_t size; int memattr; } ;


 int VM_MEMATTR_UNCACHEABLE ;
 int bzero (struct resource_map_request*,size_t) ;

void
resource_init_map_request_impl(struct resource_map_request *args, size_t sz)
{

 bzero(args, sz);
 args->size = sz;
 args->memattr = VM_MEMATTR_UNCACHEABLE;
}
