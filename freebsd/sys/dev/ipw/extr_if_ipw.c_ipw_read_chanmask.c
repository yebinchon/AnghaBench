
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ipw_softc {int dummy; } ;


 int IPW_EEPROM_CHANNEL_LIST ;
 int ipw_read_prom_word (struct ipw_softc*,int ) ;

__attribute__((used)) static uint16_t
ipw_read_chanmask(struct ipw_softc *sc)
{
 uint16_t val;


 if ((val = ipw_read_prom_word(sc, IPW_EEPROM_CHANNEL_LIST)) == 0)
  val = 0x7ff;
 val <<= 1;

 return (val);
}
