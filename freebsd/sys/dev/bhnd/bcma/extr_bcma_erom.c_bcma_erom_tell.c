
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_erom {int offset; } ;
typedef int bus_size_t ;



__attribute__((used)) static bus_size_t
bcma_erom_tell(struct bcma_erom *erom)
{
 return (erom->offset);
}
