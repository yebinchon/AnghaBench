
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_mem_d {int nm_grp; int lasterr; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int NMA_LOCK (struct netmap_mem_d*) ;
 int NMA_UNLOCK (struct netmap_mem_d*) ;
 int NM_DEBUG_MEM ;
 int netmap_debug ;
 scalar_t__ netmap_verbose ;
 int nm_iommu_group_id (struct device*) ;
 int nm_prerr (char*,int,int) ;
 int nm_prinf (char*,int) ;

__attribute__((used)) static int
nm_mem_assign_group(struct netmap_mem_d *nmd, struct device *dev)
{
 int err = 0, id;
 id = nm_iommu_group_id(dev);
 if (netmap_debug & NM_DEBUG_MEM)
  nm_prinf("iommu_group %d", id);

 NMA_LOCK(nmd);

 if (nmd->nm_grp < 0)
  nmd->nm_grp = id;

 if (nmd->nm_grp != id) {
  if (netmap_verbose)
   nm_prerr("iommu group mismatch: %u vs %u",
     nmd->nm_grp, id);
  nmd->lasterr = err = ENOMEM;
 }

 NMA_UNLOCK(nmd);
 return err;
}
