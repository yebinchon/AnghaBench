
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hda_softc {int cad; struct hda_softc* hda; } ;
struct hda_codec_inst {int cad; struct hda_codec_inst* hda; } ;


 int DPRINTF (char*,int) ;
 int HDAC_STATESTS ;
 int assert (struct hda_softc*) ;
 int hda_set_field_by_offset (struct hda_softc*,int ,int,int) ;
 int hda_update_intr (struct hda_softc*) ;

__attribute__((used)) static int
hda_signal_state_change(struct hda_codec_inst *hci)
{
 struct hda_softc *sc = ((void*)0);
 uint32_t sdiwake = 0;

 assert(hci);
 assert(hci->hda);

 DPRINTF("cad: 0x%x\n", hci->cad);

 sc = hci->hda;
 sdiwake = 1 << hci->cad;

 hda_set_field_by_offset(sc, HDAC_STATESTS, sdiwake, sdiwake);
 hda_update_intr(sc);

 return (0);
}
