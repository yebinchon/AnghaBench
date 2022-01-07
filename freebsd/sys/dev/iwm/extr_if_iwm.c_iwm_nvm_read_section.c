
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct iwm_softc {int sc_dev; TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ eeprom_size; } ;


 int ENOBUFS ;
 int IWM_DEBUG_EEPROM ;
 int IWM_DEBUG_RESET ;
 int IWM_DPRINTF (struct iwm_softc*,int,char*,scalar_t__,...) ;
 scalar_t__ IWM_NVM_DEFAULT_CHUNK_SIZE ;
 int device_printf (int ,char*) ;
 int iwm_nvm_read_chunk (struct iwm_softc*,scalar_t__,scalar_t__,scalar_t__,int *,scalar_t__*) ;

__attribute__((used)) static int
iwm_nvm_read_section(struct iwm_softc *sc,
 uint16_t section, uint8_t *data, uint16_t *len, uint32_t size_read)
{
 uint16_t seglen, length, offset = 0;
 int ret;


 length = IWM_NVM_DEFAULT_CHUNK_SIZE;

 seglen = length;


 while (seglen == length) {

  if ((size_read + offset + length) >
      sc->cfg->eeprom_size) {
   device_printf(sc->sc_dev,
       "EEPROM size is too small for NVM\n");
   return ENOBUFS;
  }

  ret = iwm_nvm_read_chunk(sc, section, offset, length, data, &seglen);
  if (ret) {
   IWM_DPRINTF(sc, IWM_DEBUG_EEPROM | IWM_DEBUG_RESET,
        "Cannot read NVM from section %d offset %d, length %d\n",
        section, offset, length);
   return ret;
  }
  offset += seglen;
 }

 IWM_DPRINTF(sc, IWM_DEBUG_EEPROM | IWM_DEBUG_RESET,
      "NVM section %d read completed\n", section);
 *len = offset;
 return 0;
}
