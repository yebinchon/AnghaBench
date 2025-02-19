
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
struct urtw_softc {int dummy; } ;
typedef int int16_t ;


 scalar_t__ urtw_eprom_ck (struct urtw_softc*) ;
 scalar_t__ urtw_eprom_writebit (struct urtw_softc*,int ) ;

__attribute__((used)) static usb_error_t
urtw_eprom_sendbits(struct urtw_softc *sc, int16_t *buf, int buflen)
{
 int i = 0;
 usb_error_t error = 0;

 for (i = 0; i < buflen; i++) {
  error = urtw_eprom_writebit(sc, buf[i]);
  if (error != 0)
   goto fail;
  error = urtw_eprom_ck(sc);
  if (error != 0)
   goto fail;
 }
fail:
 return (error);
}
