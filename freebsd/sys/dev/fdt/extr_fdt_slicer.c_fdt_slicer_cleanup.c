
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLASH_SLICES_TYPE_CFI ;
 int FLASH_SLICES_TYPE_NAND ;
 int FLASH_SLICES_TYPE_SPI ;
 int flash_register_slicer (int *,int ,int) ;

__attribute__((used)) static void
fdt_slicer_cleanup(void)
{

 flash_register_slicer(((void*)0), FLASH_SLICES_TYPE_NAND, 1);
 flash_register_slicer(((void*)0), FLASH_SLICES_TYPE_CFI, 1);
 flash_register_slicer(((void*)0), FLASH_SLICES_TYPE_SPI, 1);
}
