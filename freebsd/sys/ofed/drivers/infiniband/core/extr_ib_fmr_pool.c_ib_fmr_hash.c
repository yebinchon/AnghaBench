
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int IB_FMR_HASH_SIZE ;
 int jhash_2words (int,int,int ) ;

__attribute__((used)) static inline u32 ib_fmr_hash(u64 first_page)
{
 return jhash_2words((u32) first_page, (u32) (first_page >> 32), 0) &
  (IB_FMR_HASH_SIZE - 1);
}
