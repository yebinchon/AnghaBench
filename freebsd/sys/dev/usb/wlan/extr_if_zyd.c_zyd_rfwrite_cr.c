
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct zyd_softc {int dummy; } ;


 int ZYD_CR242 ;
 int ZYD_CR243 ;
 int ZYD_CR244 ;
 int zyd_write16_m (struct zyd_softc*,int ,int) ;

__attribute__((used)) static int
zyd_rfwrite_cr(struct zyd_softc *sc, uint32_t val)
{
 int error;

 zyd_write16_m(sc, ZYD_CR244, (val >> 16) & 0xff);
 zyd_write16_m(sc, ZYD_CR243, (val >> 8) & 0xff);
 zyd_write16_m(sc, ZYD_CR242, (val >> 0) & 0xff);
fail:
 return (error);
}
