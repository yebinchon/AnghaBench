
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chipc_flash ;





 int FLASH_SLICES_TYPE_CFI ;
 int FLASH_SLICES_TYPE_SPI ;
 int TRUE ;
 int chipc_slicer_cfi ;
 int chipc_slicer_spi ;
 int flash_register_slicer (int ,int ,int ) ;

void
chipc_register_slicer(chipc_flash flash_type)
{
 switch (flash_type) {
 case 129:
 case 128:
  flash_register_slicer(chipc_slicer_spi, FLASH_SLICES_TYPE_SPI,
     TRUE);
  break;
 case 130:
  flash_register_slicer(chipc_slicer_cfi, FLASH_SLICES_TYPE_CFI,
     TRUE);
  break;
 default:

  break;
 }
}
