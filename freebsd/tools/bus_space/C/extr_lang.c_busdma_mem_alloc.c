
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int busdma_tag_t ;
typedef int busdma_md_t ;


 int bd_mem_alloc (int ,int ) ;
 int errno ;

int
busdma_mem_alloc(busdma_tag_t tag, u_int flags, busdma_md_t *out_p)
{
 int res;

 res = bd_mem_alloc(tag, flags);
 if (res == -1)
  return (errno);
 *out_p = res;
 return (0);
}
