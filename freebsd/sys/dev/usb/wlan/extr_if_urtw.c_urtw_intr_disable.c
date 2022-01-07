
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct urtw_softc {int dummy; } ;


 int URTW_INTR_MASK ;
 int urtw_write16_m (struct urtw_softc*,int ,int ) ;

__attribute__((used)) static usb_error_t
urtw_intr_disable(struct urtw_softc *sc)
{
 usb_error_t error;

 urtw_write16_m(sc, URTW_INTR_MASK, 0);
fail:
 return (error);
}
