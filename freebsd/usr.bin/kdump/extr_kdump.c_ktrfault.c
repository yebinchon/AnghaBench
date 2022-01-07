
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct ktr_fault {int type; scalar_t__ vaddr; } ;


 int print_mask_arg (int ,int ) ;
 int printf (char*,...) ;
 int sysdecode_vmprot ;

void
ktrfault(struct ktr_fault *ktr)
{

 printf("0x%jx ", (uintmax_t)ktr->vaddr);
 print_mask_arg(sysdecode_vmprot, ktr->type);
 printf("\n");
}
