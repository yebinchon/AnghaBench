
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ALIGN (int,int) ;
 int ilog2 (int) ;

__attribute__((used)) static int get_octo_len(u64 addr, u64 len, int page_size)
{
 u64 offset;
 int npages;

 offset = addr & (page_size - 1);
 npages = ALIGN(len + offset, page_size) >> ilog2(page_size);
 return (npages + 1) / 2;
}
