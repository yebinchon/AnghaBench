
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct image_params {scalar_t__ image_header; } ;
typedef int boolean_t ;
struct TYPE_2__ {int e_flags; } ;
typedef TYPE_1__ Elf64_Ehdr ;



__attribute__((used)) static boolean_t
ppc64_elfv1_header_match(struct image_params *params)
{
 const Elf64_Ehdr *hdr = (const Elf64_Ehdr *)params->image_header;
 int abi = (hdr->e_flags & 3);

 return (abi == 0 || abi == 1);
}
