
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
struct phys_sge_pairs {int dummy; } ;


 int roundup2 (int,int) ;

__attribute__((used)) static inline int
ccr_phys_dsgl_len(int nsegs)
{
 int len;

 len = (nsegs / 8) * sizeof(struct phys_sge_pairs);
 if ((nsegs % 8) != 0) {
  len += sizeof(uint16_t) * 8;
  len += roundup2(nsegs % 8, 2) * sizeof(uint64_t);
 }
 return (len);
}
