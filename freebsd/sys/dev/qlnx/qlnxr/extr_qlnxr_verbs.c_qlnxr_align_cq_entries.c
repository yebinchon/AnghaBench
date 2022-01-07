
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ALIGN (int,int ) ;
 int PAGE_SIZE ;
 int QLNXR_CQE_SIZE ;

__attribute__((used)) static inline int
qlnxr_align_cq_entries(int entries)
{
 u64 size, aligned_size;
 size = (entries + 1) * QLNXR_CQE_SIZE;






 aligned_size = ALIGN(size, PAGE_SIZE);




 return (aligned_size / QLNXR_CQE_SIZE);
}
