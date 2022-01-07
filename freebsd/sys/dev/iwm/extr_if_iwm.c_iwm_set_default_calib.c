
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {int event_trigger; int flow_trigger; } ;
struct iwm_tlv_calib_data {TYPE_2__ calib; int ucode_type; } ;
struct iwm_softc {TYPE_1__* sc_default_calib; int sc_dev; } ;
struct TYPE_3__ {int event_trigger; int flow_trigger; } ;


 int EINVAL ;
 size_t IWM_UCODE_TYPE_MAX ;
 int device_printf (int ,char*,size_t) ;
 size_t le32toh (int ) ;

__attribute__((used)) static int
iwm_set_default_calib(struct iwm_softc *sc, const void *data)
{
 const struct iwm_tlv_calib_data *def_calib = data;
 uint32_t ucode_type = le32toh(def_calib->ucode_type);

 if (ucode_type >= IWM_UCODE_TYPE_MAX) {
  device_printf(sc->sc_dev,
      "Wrong ucode_type %u for default "
      "calibration.\n", ucode_type);
  return EINVAL;
 }

 sc->sc_default_calib[ucode_type].flow_trigger =
     def_calib->calib.flow_trigger;
 sc->sc_default_calib[ucode_type].event_trigger =
     def_calib->calib.event_trigger;

 return 0;
}
