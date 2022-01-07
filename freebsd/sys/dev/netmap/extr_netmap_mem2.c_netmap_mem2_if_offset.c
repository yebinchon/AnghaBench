
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_mem_d {int dummy; } ;
typedef int ssize_t ;


 int netmap_if_offset (struct netmap_mem_d*,void const*) ;

__attribute__((used)) static ssize_t
netmap_mem2_if_offset(struct netmap_mem_d *nmd, const void *addr)
{
 return netmap_if_offset(nmd, addr);
}
