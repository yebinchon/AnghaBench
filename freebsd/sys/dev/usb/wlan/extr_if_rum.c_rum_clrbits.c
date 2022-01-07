
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct rum_softc {int dummy; } ;


 int rum_read (struct rum_softc*,int ) ;
 int rum_write (struct rum_softc*,int ,int) ;

__attribute__((used)) static usb_error_t
rum_clrbits(struct rum_softc *sc, uint16_t reg, uint32_t mask)
{
 return (rum_write(sc, reg, rum_read(sc, reg) & ~mask));
}
