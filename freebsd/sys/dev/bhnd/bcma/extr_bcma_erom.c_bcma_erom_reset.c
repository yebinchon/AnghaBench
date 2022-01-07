
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_erom {scalar_t__ offset; } ;



__attribute__((used)) static void
bcma_erom_reset(struct bcma_erom *erom)
{
 erom->offset = 0;
}
