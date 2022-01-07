
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MTHCA_RATE_MEMFREE_EIGHTH ;
 int MTHCA_RATE_MEMFREE_FULL ;
 int MTHCA_RATE_MEMFREE_HALF ;
 int MTHCA_RATE_MEMFREE_QUARTER ;

__attribute__((used)) static u8 ib_rate_to_memfree(u8 req_rate, u8 cur_rate)
{
 if (cur_rate <= req_rate)
  return 0;





 switch ((cur_rate - 1) / req_rate) {
 case 0: return MTHCA_RATE_MEMFREE_FULL;
 case 1: return MTHCA_RATE_MEMFREE_HALF;
 case 2:
 case 3: return MTHCA_RATE_MEMFREE_QUARTER;
 default: return MTHCA_RATE_MEMFREE_EIGHTH;
 }
}
