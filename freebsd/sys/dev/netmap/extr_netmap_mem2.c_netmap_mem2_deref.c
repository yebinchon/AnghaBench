
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_mem_d {int active; } ;


 int NM_DEBUG_MEM ;
 int netmap_debug ;
 int nm_prinf (char*,int ) ;

__attribute__((used)) static void
netmap_mem2_deref(struct netmap_mem_d *nmd)
{

 if (netmap_debug & NM_DEBUG_MEM)
  nm_prinf("active = %d", nmd->active);

}
