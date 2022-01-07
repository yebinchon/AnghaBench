
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcma_erom {int offset; } ;


 int bcma_erom_peek32 (struct bcma_erom*,int *) ;

__attribute__((used)) static int
bcma_erom_read32(struct bcma_erom *erom, uint32_t *entry)
{
 int error;

 if ((error = bcma_erom_peek32(erom, entry)) == 0)
  erom->offset += 4;

 return (error);
}
