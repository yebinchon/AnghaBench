
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_obj_pool {int dummy; } ;


 int netmap_reset_obj_allocator (struct netmap_obj_pool*) ;

__attribute__((used)) static void
netmap_destroy_obj_allocator(struct netmap_obj_pool *p)
{
 if (p == ((void*)0))
  return;
 netmap_reset_obj_allocator(p);
}
