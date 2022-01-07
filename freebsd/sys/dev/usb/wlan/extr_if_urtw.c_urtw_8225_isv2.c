
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef scalar_t__ uint32_t ;
struct urtw_softc {int sc_mtx; } ;


 int URTW_8225_ADDR_0_DATA_MAGIC1 ;
 int URTW_8225_ADDR_0_DATA_MAGIC2 ;
 int URTW_8225_ADDR_0_MAGIC ;
 scalar_t__ URTW_8225_ADDR_8_DATA_MAGIC1 ;
 int URTW_8225_ADDR_8_MAGIC ;
 scalar_t__ URTW_8225_ADDR_9_DATA_MAGIC1 ;
 int URTW_8225_ADDR_9_MAGIC ;
 int URTW_RF_PINS_ENABLE ;
 int URTW_RF_PINS_MAGIC5 ;
 int URTW_RF_PINS_OUTPUT ;
 int URTW_RF_PINS_SELECT ;
 scalar_t__ urtw_8225_read (struct urtw_softc*,int ,scalar_t__*) ;
 int urtw_8225_write (struct urtw_softc*,int ,int ) ;
 int urtw_write16_m (struct urtw_softc*,int ,int ) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static usb_error_t
urtw_8225_isv2(struct urtw_softc *sc, int *ret)
{
 uint32_t data;
 usb_error_t error;

 *ret = 1;

 urtw_write16_m(sc, URTW_RF_PINS_OUTPUT, URTW_RF_PINS_MAGIC5);
 urtw_write16_m(sc, URTW_RF_PINS_SELECT, URTW_RF_PINS_MAGIC5);
 urtw_write16_m(sc, URTW_RF_PINS_ENABLE, URTW_RF_PINS_MAGIC5);
 usb_pause_mtx(&sc->sc_mtx, 500);

 urtw_8225_write(sc, URTW_8225_ADDR_0_MAGIC,
     URTW_8225_ADDR_0_DATA_MAGIC1);

 error = urtw_8225_read(sc, URTW_8225_ADDR_8_MAGIC, &data);
 if (error != 0)
  goto fail;
 if (data != URTW_8225_ADDR_8_DATA_MAGIC1)
  *ret = 0;
 else {
  error = urtw_8225_read(sc, URTW_8225_ADDR_9_MAGIC, &data);
  if (error != 0)
   goto fail;
  if (data != URTW_8225_ADDR_9_DATA_MAGIC1)
   *ret = 0;
 }

 urtw_8225_write(sc, URTW_8225_ADDR_0_MAGIC,
     URTW_8225_ADDR_0_DATA_MAGIC2);
fail:
 return (error);
}
