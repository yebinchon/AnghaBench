
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_mem_d {int nm_id; } ;
typedef int nm_memid_t ;



nm_memid_t
netmap_mem_get_id(struct netmap_mem_d *nmd)
{
 return nmd->nm_id;
}
