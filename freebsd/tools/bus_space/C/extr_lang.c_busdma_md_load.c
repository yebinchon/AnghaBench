
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int busdma_md_t ;


 int bd_md_load (int ,void*,size_t,int ) ;

int
busdma_md_load(busdma_md_t md, void *buf, size_t len, u_int flags)
{

 return (bd_md_load(md, buf, len, flags));
}
