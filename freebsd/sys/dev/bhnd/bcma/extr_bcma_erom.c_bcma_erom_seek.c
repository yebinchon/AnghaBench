
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_erom {int offset; } ;
typedef int bus_size_t ;



__attribute__((used)) static void
bcma_erom_seek(struct bcma_erom *erom, bus_size_t offset)
{
 erom->offset = offset;
}
