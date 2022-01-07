
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_range {int dummy; } ;


 int mmio_rb_root ;
 int register_mem_int (int *,struct mem_range*) ;

int
register_mem(struct mem_range *memp)
{

 return (register_mem_int(&mmio_rb_root, memp));
}
