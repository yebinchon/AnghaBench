
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct rum_softc {int dummy; } ;


 int htole32 (int ) ;
 int rum_write_multi (struct rum_softc*,int ,int *,int) ;

__attribute__((used)) static usb_error_t
rum_write(struct rum_softc *sc, uint16_t reg, uint32_t val)
{
 uint32_t tmp = htole32(val);

 return (rum_write_multi(sc, reg, &tmp, sizeof tmp));
}
