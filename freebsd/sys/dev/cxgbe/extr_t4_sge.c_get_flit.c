
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sglist_seg {int ss_paddr; int ss_len; } ;
typedef int __be64 ;


 int htobe64 (int) ;

__attribute__((used)) static __be64
get_flit(struct sglist_seg *segs, int nsegs, int idx)
{
 int i = (idx / 3) * 2;

 switch (idx % 3) {
 case 0: {
  uint64_t rc;

  rc = (uint64_t)segs[i].ss_len << 32;
  if (i + 1 < nsegs)
   rc |= (uint64_t)(segs[i + 1].ss_len);

  return (htobe64(rc));
 }
 case 1:
  return (htobe64(segs[i].ss_paddr));
 case 2:
  return (htobe64(segs[i + 1].ss_paddr));
 }

 return (0);
}
