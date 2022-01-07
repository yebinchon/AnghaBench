
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_mem_d {TYPE_1__* pools; } ;
struct TYPE_2__ {int _objsize; } ;


 size_t NETMAP_BUF_POOL ;

unsigned
netmap_mem_bufsize(struct netmap_mem_d *nmd)
{
 return nmd->pools[NETMAP_BUF_POOL]._objsize;
}
