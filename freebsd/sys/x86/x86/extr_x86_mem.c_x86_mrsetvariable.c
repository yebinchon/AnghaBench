
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_range_softc {int mr_cap; int mr_ndesc; struct mem_range_desc* mr_desc; } ;
struct mem_range_desc {int mr_flags; scalar_t__ mr_base; scalar_t__ mr_len; int mr_owner; } ;


 int EACCES ;
 int EBUSY ;
 int EINVAL ;
 int ENOSPC ;
 int MDF_ACTIVE ;
 int MDF_ATTRMASK ;
 int MDF_BUSY ;
 int MDF_FORCE ;
 int MDF_UNKNOWN ;
 int MR686_FIXMTRR ;
 int MTRR_N16K ;
 int MTRR_N4K ;
 int MTRR_N64K ;
 int bcopy (int ,int ,int) ;
 int mrcopyflags (int,int) ;
 scalar_t__ mroverlap (struct mem_range_desc*,struct mem_range_desc*) ;
 scalar_t__ x86_mtrrconflict (int,int) ;

__attribute__((used)) static int
x86_mrsetvariable(struct mem_range_softc *sc, struct mem_range_desc *mrd,
    int *arg)
{
 struct mem_range_desc *curr_md, *free_md;
 int i;
 i = (sc->mr_cap & MR686_FIXMTRR) ? MTRR_N64K + MTRR_N16K + MTRR_N4K : 0;
 curr_md = sc->mr_desc + i;
 free_md = ((void*)0);
 for (; i < sc->mr_ndesc; i++, curr_md++) {
  if (curr_md->mr_flags & MDF_ACTIVE) {

   if (curr_md->mr_base == mrd->mr_base &&
       curr_md->mr_len == mrd->mr_len) {


    if (curr_md->mr_flags & MDF_BUSY)
     return (EBUSY);


    if (!(mrd->mr_flags & MDF_FORCE) &&
        (curr_md->mr_flags & MDF_ATTRMASK) ==
        MDF_UNKNOWN)
     return (EACCES);


    free_md = curr_md;
    break;
   }


   if (mroverlap(curr_md, mrd)) {

    if (x86_mtrrconflict(curr_md->mr_flags,
        mrd->mr_flags))
     return (EINVAL);
   }
  } else if (free_md == ((void*)0)) {
   free_md = curr_md;
  }
 }


 if (free_md == ((void*)0))
  return (ENOSPC);


 free_md->mr_base = mrd->mr_base;
 free_md->mr_len = mrd->mr_len;
 free_md->mr_flags = mrcopyflags(MDF_ACTIVE, mrd->mr_flags);
 bcopy(mrd->mr_owner, free_md->mr_owner, sizeof(mrd->mr_owner));
 return (0);
}
