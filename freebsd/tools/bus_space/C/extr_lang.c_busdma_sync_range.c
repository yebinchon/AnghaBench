
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int busdma_md_t ;
typedef int bus_size_t ;


 int bd_sync (int ,int,int ,int ) ;

int
busdma_sync_range(busdma_md_t md, int op, bus_size_t ofs, bus_size_t len)
{

 return (bd_sync(md, op, ofs, len));
}
