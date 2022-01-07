
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct urtw_softc {int dummy; } ;


 int URTW_8225_ADDR_C_DATA_MAGIC1 ;
 int URTW_8225_ADDR_C_DATA_MAGIC2 ;
 int URTW_8225_ADDR_C_MAGIC ;
 int urtw_8187_write_phy_cck (struct urtw_softc*,int,int ) ;
 int urtw_8225_setgain (struct urtw_softc*,int) ;
 int * urtw_8225_threshold ;
 int urtw_8225_write (struct urtw_softc*,int ,int ) ;

__attribute__((used)) static usb_error_t
urtw_8225_rf_set_sens(struct urtw_softc *sc, int sens)
{
 usb_error_t error;

 if (sens < 0 || sens > 6)
  return -1;

 if (sens > 4)
  urtw_8225_write(sc,
      URTW_8225_ADDR_C_MAGIC, URTW_8225_ADDR_C_DATA_MAGIC1);
 else
  urtw_8225_write(sc,
      URTW_8225_ADDR_C_MAGIC, URTW_8225_ADDR_C_DATA_MAGIC2);

 sens = 6 - sens;
 error = urtw_8225_setgain(sc, sens);
 if (error)
  goto fail;

 urtw_8187_write_phy_cck(sc, 0x41, urtw_8225_threshold[sens]);

fail:
 return (error);
}
