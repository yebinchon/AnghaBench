
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hda_codec_cmd_ctl {int wp; int rp; int size; scalar_t__ run; scalar_t__ dma_vaddr; } ;
struct hda_softc {struct hda_codec_cmd_ctl corb; } ;


 int HDAC_CORBRP ;
 int HDAC_CORBWP ;
 int HDA_CORB_ENTRY_LEN ;
 int assert (int) ;
 int hda_dma_ld_dword (scalar_t__) ;
 int hda_get_reg_by_offset (struct hda_softc*,int ) ;
 int hda_response_interrupt (struct hda_softc*) ;
 int hda_send_command (struct hda_softc*,int ) ;
 int hda_set_reg_by_offset (struct hda_softc*,int ,int) ;

__attribute__((used)) static int
hda_corb_run(struct hda_softc *sc)
{
 struct hda_codec_cmd_ctl *corb = &sc->corb;
 uint32_t verb = 0;
 int err;

 corb->wp = hda_get_reg_by_offset(sc, HDAC_CORBWP);

 while (corb->rp != corb->wp && corb->run) {
  corb->rp++;
  corb->rp %= corb->size;

  verb = hda_dma_ld_dword(corb->dma_vaddr + HDA_CORB_ENTRY_LEN * corb->rp);


  err = hda_send_command(sc, verb);
  assert(!err);
 }

 hda_set_reg_by_offset(sc, HDAC_CORBRP, corb->rp);

 if (corb->run)
  hda_response_interrupt(sc);

 return (0);
}
