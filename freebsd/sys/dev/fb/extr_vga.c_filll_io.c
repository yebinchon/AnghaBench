
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int32_t ;


 int writel (int,int) ;

__attribute__((used)) static void
filll_io(int val, vm_offset_t d, size_t size)
{
    while (size-- > 0) {
 writel(d, val);
 d += sizeof(u_int32_t);
    }
}
