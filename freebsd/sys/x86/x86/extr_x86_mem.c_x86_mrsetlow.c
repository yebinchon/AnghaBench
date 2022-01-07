
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_range_softc {int dummy; } ;
struct mem_range_desc {int mr_flags; int mr_owner; scalar_t__ mr_len; scalar_t__ mr_base; } ;


 int EACCES ;
 int EINVAL ;
 int MDF_ATTRMASK ;
 int MDF_FIRMWARE ;
 int MDF_FORCE ;
 int MDF_UNKNOWN ;
 int bcopy (int ,int ,int) ;
 int mrcopyflags (int,int) ;
 struct mem_range_desc* x86_mtrrfixsearch (struct mem_range_softc*,scalar_t__) ;

__attribute__((used)) static int
x86_mrsetlow(struct mem_range_softc *sc, struct mem_range_desc *mrd, int *arg)
{
 struct mem_range_desc *first_md, *last_md, *curr_md;


 if ((first_md = x86_mtrrfixsearch(sc, mrd->mr_base)) == ((void*)0) ||
     (last_md = x86_mtrrfixsearch(sc, mrd->mr_base + mrd->mr_len - 1))
     == ((void*)0))
  return (EINVAL);


 if ((mrd->mr_flags & MDF_FORCE) == 0) {
  for (curr_md = first_md; curr_md <= last_md; curr_md++) {
   if ((curr_md->mr_flags & MDF_ATTRMASK) == MDF_UNKNOWN)
    return (EACCES);
  }
 }


 for (curr_md = first_md; curr_md <= last_md; curr_md++) {
  curr_md->mr_flags = mrcopyflags(curr_md->mr_flags &
      ~MDF_FIRMWARE, mrd->mr_flags);
  bcopy(mrd->mr_owner, curr_md->mr_owner, sizeof(mrd->mr_owner));
 }

 return (0);
}
