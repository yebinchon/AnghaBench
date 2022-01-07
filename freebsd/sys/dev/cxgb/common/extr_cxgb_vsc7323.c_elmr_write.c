
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int t3_elmr_blk_write (int *,int,int *,int) ;

__attribute__((used)) static int elmr_write(adapter_t *adap, int addr, u32 val)
{
 return t3_elmr_blk_write(adap, addr, &val, 1);
}
