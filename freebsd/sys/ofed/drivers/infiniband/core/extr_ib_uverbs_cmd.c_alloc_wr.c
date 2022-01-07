
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sge {int dummy; } ;
typedef int __u32 ;


 scalar_t__ ALIGN (size_t,int) ;
 int GFP_KERNEL ;
 void* kmalloc (scalar_t__,int ) ;

__attribute__((used)) static void *alloc_wr(size_t wr_size, __u32 num_sge)
{
 return kmalloc(ALIGN(wr_size, sizeof (struct ib_sge)) +
    num_sge * sizeof (struct ib_sge), GFP_KERNEL);
}
