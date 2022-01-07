
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_mem_d {TYPE_1__* pools; } ;
struct netmap_lut {int objsize; int objtotal; int lut; int plut; } ;
struct TYPE_2__ {int _objsize; int objtotal; int lut; } ;


 size_t NETMAP_BUF_POOL ;

__attribute__((used)) static int
netmap_mem2_get_lut(struct netmap_mem_d *nmd, struct netmap_lut *lut)
{
 lut->lut = nmd->pools[NETMAP_BUF_POOL].lut;



 lut->objtotal = nmd->pools[NETMAP_BUF_POOL].objtotal;
 lut->objsize = nmd->pools[NETMAP_BUF_POOL]._objsize;

 return 0;
}
