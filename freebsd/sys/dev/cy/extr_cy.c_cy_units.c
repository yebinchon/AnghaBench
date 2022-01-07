
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ cy_addr ;


 int CD1400_CCR ;
 int CD1400_CCR_CMDRESET ;
 int CD1400_CCR_FULLRESET ;
 int CD1400_GFRCR ;
 int CY_MAX_CD1400s ;
 int DELAY (int) ;
 int cd_inb (scalar_t__,int ,int) ;
 int cd_outb (scalar_t__,int ,int,int) ;
 int* cy_chip_offset ;

int
cy_units(cy_addr cy_iobase, int cy_align)
{
 int cyu;
 u_char firmware_version;
 int i;
 cy_addr iobase;

 for (cyu = 0; cyu < CY_MAX_CD1400s; ++cyu) {
  iobase = cy_iobase + (cy_chip_offset[cyu] << cy_align);


  for (i = 0; i < 10; i++) {
   DELAY(50);
   if (!cd_inb(iobase, CD1400_CCR, cy_align))
    break;
  }


  cd_outb(iobase, CD1400_GFRCR, cy_align, 0);


  cd_outb(iobase, CD1400_CCR, cy_align,
   CD1400_CCR_CMDRESET | CD1400_CCR_FULLRESET);


  firmware_version = 0;


  for (i = 0; i < 200; i++) {
   DELAY(50);


   firmware_version = cd_inb(iobase, CD1400_GFRCR,
        cy_align);
   if ((firmware_version & 0xf0) == 0x40)
    break;
  }






  if ((firmware_version & 0xf0) != 0x40)
   break;
 }
 return (cyu);
}
