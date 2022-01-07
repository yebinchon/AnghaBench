
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwi_softc {int dummy; } ;


 int IWI_MEM_EEPROM_EVENT ;
 int MEM_READ_4 (struct iwi_softc*,int ) ;

__attribute__((used)) static uint32_t
iwi_read_event(struct iwi_softc *sc)
{
 return MEM_READ_4(sc, IWI_MEM_EEPROM_EVENT);
}
