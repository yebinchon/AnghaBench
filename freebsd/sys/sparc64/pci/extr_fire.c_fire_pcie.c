
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef size_t u_int ;
struct fo_msiq_record {size_t fomqr_word0; } ;
struct fire_softc {size_t sc_msiq_size; int sc_dev; } ;
struct TYPE_2__ {struct fire_softc* fica_sc; } ;
struct fire_msiqarg {size_t fmqa_msiq; int fmqa_mtx; scalar_t__ fmqa_tail; scalar_t__ fmqa_head; struct fo_msiq_record* fmqa_base; TYPE_1__ fmqa_fica; } ;
typedef int device_t ;


 int FILTER_HANDLED ;
 size_t FIRE_PCI_READ_8 (struct fire_softc*,scalar_t__) ;
 int FIRE_PCI_WRITE_8 (struct fire_softc*,scalar_t__,size_t) ;
 size_t FO_MQR_WORD0_DATA0_MASK ;
 size_t FO_MQR_WORD0_DATA0_SHFT ;
 size_t FO_MQR_WORD0_FMT_TYPE_MASK ;
 size_t FO_MQR_WORD0_FMT_TYPE_MSG ;
 scalar_t__ FO_PCI_EQ_CTRL_CLR_BASE ;
 size_t FO_PCI_EQ_CTRL_CLR_COVERR ;
 size_t FO_PCI_EQ_HD_MASK ;
 size_t FO_PCI_EQ_HD_SHFT ;
 size_t FO_PCI_EQ_TL_OVERR ;
 int KASSERT (int,char*) ;
 size_t PCIE_MSG_CODE_ERR_COR ;
 size_t PCIE_MSG_CODE_ERR_FATAL ;
 size_t PCIE_MSG_CODE_ERR_NONFATAL ;
 scalar_t__ __predict_true (int) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int panic (char*,int ,...) ;

__attribute__((used)) static int
fire_pcie(void *arg)
{
 struct fire_msiqarg *fmqa;
 struct fire_softc *sc;
 struct fo_msiq_record *qrec;
 device_t dev;
 uint64_t word0;
 u_int head, msg, msiq;

 fmqa = arg;
 sc = fmqa->fmqa_fica.fica_sc;
 dev = sc->sc_dev;
 msiq = fmqa->fmqa_msiq;
 mtx_lock_spin(&fmqa->fmqa_mtx);
 head = (FIRE_PCI_READ_8(sc, fmqa->fmqa_head) & FO_PCI_EQ_HD_MASK) >>
     FO_PCI_EQ_HD_SHFT;
 qrec = &fmqa->fmqa_base[head];
 word0 = qrec->fomqr_word0;
 for (;;) {
  KASSERT((word0 & FO_MQR_WORD0_FMT_TYPE_MSG) != 0,
      ("%s: received non-PCIe message in event queue %d "
      "(word0 %#llx)", device_get_nameunit(dev), msiq,
      (unsigned long long)word0));
  msg = (word0 & FO_MQR_WORD0_DATA0_MASK) >>
      FO_MQR_WORD0_DATA0_SHFT;





  if (msg == 0x30)
   device_printf(dev, "correctable PCIe error\n");
  else if (msg == 0x31 ||
      msg == 0x33)
   panic("%s: %sfatal PCIe error",
       device_get_nameunit(dev),
       msg == 0x31 ? "non-" : "");
  else
   panic("%s: received unknown PCIe message %#x",
       device_get_nameunit(dev), msg);
  qrec->fomqr_word0 &= ~FO_MQR_WORD0_FMT_TYPE_MASK;
  head = (head + 1) % sc->sc_msiq_size;
  qrec = &fmqa->fmqa_base[head];
  word0 = qrec->fomqr_word0;
  if (__predict_true((word0 & FO_MQR_WORD0_FMT_TYPE_MASK) == 0))
   break;
 }
 FIRE_PCI_WRITE_8(sc, fmqa->fmqa_head, (head & FO_PCI_EQ_HD_MASK) <<
     FO_PCI_EQ_HD_SHFT);
 if ((FIRE_PCI_READ_8(sc, fmqa->fmqa_tail) &
     FO_PCI_EQ_TL_OVERR) != 0) {
  device_printf(dev, "event queue %d overflow\n", msiq);
  msiq <<= 3;
  FIRE_PCI_WRITE_8(sc, FO_PCI_EQ_CTRL_CLR_BASE + msiq,
      FIRE_PCI_READ_8(sc, FO_PCI_EQ_CTRL_CLR_BASE + msiq) |
      FO_PCI_EQ_CTRL_CLR_COVERR);
 }
 mtx_unlock_spin(&fmqa->fmqa_mtx);
 return (FILTER_HANDLED);
}
