
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcma_erom {int dummy; } ;


 int bcma_erom_read32 (struct bcma_erom*,int *) ;

__attribute__((used)) static int
bcma_erom_skip32(struct bcma_erom *erom)
{
 uint32_t entry;

 return bcma_erom_read32(erom, &entry);
}
