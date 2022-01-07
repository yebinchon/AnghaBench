
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwi_softc {int dummy; } ;


 int IWI_MEM_EEPROM_EVENT ;
 int MEM_WRITE_4 (struct iwi_softc*,int ,int ) ;

__attribute__((used)) static void
iwi_write_event(struct iwi_softc *sc, uint32_t v)
{
 MEM_WRITE_4(sc, IWI_MEM_EEPROM_EVENT, v);
}
