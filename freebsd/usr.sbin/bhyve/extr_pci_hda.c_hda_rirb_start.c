
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint64_t ;
struct hda_codec_cmd_ctl {char* name; int size; int wp; int rp; int run; int dma_vaddr; } ;
struct hda_softc {struct hda_codec_cmd_ctl rirb; } ;


 int DPRINTF (char*,...) ;
 int HDAC_RIRBLBASE ;
 int HDAC_RIRBSIZE ;
 int HDAC_RIRBSIZE_RIRBSIZE_MASK ;
 int HDAC_RIRBUBASE ;
 int HDAC_RIRBWP ;
 int HDA_RIRB_ENTRY_LEN ;
 int hda_dma_get_vaddr (struct hda_softc*,int,int) ;
 int hda_get_reg_by_offset (struct hda_softc*,int ) ;
 int hda_print_cmd_ctl_data (struct hda_codec_cmd_ctl*) ;
 int* hda_rirb_sizes ;

__attribute__((used)) static int
hda_rirb_start(struct hda_softc *sc)
{
 struct hda_codec_cmd_ctl *rirb = &sc->rirb;
 uint8_t rirbsize = 0;
 uint64_t rirblbase = 0;
 uint64_t rirbubase = 0;
 uint64_t rirbpaddr = 0;

 rirb->name = "RIRB";

 rirbsize = hda_get_reg_by_offset(sc, HDAC_RIRBSIZE) & HDAC_RIRBSIZE_RIRBSIZE_MASK;

 rirb->size = hda_rirb_sizes[rirbsize];

 if (!rirb->size) {
  DPRINTF("Invalid rirb size\n");
  return (-1);
 }

 rirblbase = hda_get_reg_by_offset(sc, HDAC_RIRBLBASE);
 rirbubase = hda_get_reg_by_offset(sc, HDAC_RIRBUBASE);

 rirbpaddr = rirblbase | (rirbubase << 32);
 DPRINTF("RIRB dma_paddr: %p\n", (void *)rirbpaddr);

 rirb->dma_vaddr = hda_dma_get_vaddr(sc, rirbpaddr,
   HDA_RIRB_ENTRY_LEN * rirb->size);
 if (!rirb->dma_vaddr) {
  DPRINTF("Fail to get the guest virtual address\n");
  return (-1);
 }

 rirb->wp = hda_get_reg_by_offset(sc, HDAC_RIRBWP);
 rirb->rp = 0x0000;

 rirb->run = 1;

 hda_print_cmd_ctl_data(rirb);

 return (0);
}
