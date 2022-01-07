
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int dummy; } ;


 int IWN_CLRBITS (struct iwn_softc*,int ,int ) ;
 int IWN_HW_IF_CONFIG ;
 int IWN_HW_IF_CONFIG_EEPROM_LOCKED ;

__attribute__((used)) static __inline void
iwn_eeprom_unlock(struct iwn_softc *sc)
{
 IWN_CLRBITS(sc, IWN_HW_IF_CONFIG, IWN_HW_IF_CONFIG_EEPROM_LOCKED);
}
