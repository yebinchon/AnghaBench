
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {int fdct; } ;
typedef int device_t ;


 int DELAY (int) ;
 int ENXIO ;
 int FDC_ENHANCED ;
 int FDC_NE765 ;
 int FDC_UNKNOWN ;
 int FDO_FRST ;
 int NE7CMD_SPECIFY ;
 int NE7CMD_VERSION ;
 int NE7_SPEC_1 (int,int) ;
 int NE7_SPEC_2 (int,int ) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,int) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ fdc_cmd (struct fdc_data*,int,int,int,int*,...) ;
 int fdout_wr (struct fdc_data*,int ) ;
 int fdsts_rd (struct fdc_data*) ;

int
fdc_initial_reset(device_t dev, struct fdc_data *fdc)
{
 int ic_type, part_id;





 if (fdsts_rd(fdc) == 0xff)
  return (ENXIO);





 fdout_wr(fdc, 0);
 fdout_wr(fdc, 0);
 if (fdsts_rd(fdc) != 0)
  return (ENXIO);




 fdout_wr(fdc, FDO_FRST);
 DELAY(100);
 if (fdsts_rd(fdc) != 0x80)
  return (ENXIO);


 if (fdc_cmd(fdc, 3, NE7CMD_SPECIFY, NE7_SPEC_1(6, 240),
     NE7_SPEC_2(31, 0), 0))
  return (ENXIO);
 if (fdc_cmd(fdc, 1, NE7CMD_VERSION, 1, &ic_type))
  return (ENXIO);
 if (fdc_cmd(fdc, 1, 0x18, 1, &part_id))
  return (ENXIO);
 if (bootverbose)
  device_printf(dev,
      "ic_type %02x part_id %02x\n", ic_type, part_id);
 switch (ic_type & 0xff) {
 case 0x80:
  device_set_desc(dev, "NEC 765 or clone");
  fdc->fdct = FDC_NE765;
  break;
 case 0x81:
 case 0x90:
  device_set_desc(dev,
      "Enhanced floppy controller");
  fdc->fdct = FDC_ENHANCED;
  break;
 default:
  device_set_desc(dev, "Generic floppy controller");
  fdc->fdct = FDC_UNKNOWN;
  break;
 }
 return (0);
}
