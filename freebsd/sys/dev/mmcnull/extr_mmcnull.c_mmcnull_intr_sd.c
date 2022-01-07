
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int status; } ;
struct TYPE_5__ {int opcode; int* resp; int error; TYPE_1__* data; } ;
struct ccb_mmcio {TYPE_2__ cmd; } ;
union ccb {TYPE_3__ ccb_h; struct ccb_mmcio mmcio; } ;
struct mmcnull_softc {union ccb* cur_ccb; int dev; int sc_mtx; } ;
struct TYPE_4__ {int data; } ;



 int CAM_REQ_CMP ;
 int MA_OWNED ;



 int MMC_OCR_CARD_BUSY ;




 int R1_APP_CMD ;


 int device_printf (int ,char*,...) ;
 int mtx_assert (int *,int ) ;
 int strcpy (int ,char*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
mmcnull_intr_sd(void *xsc) {
 struct mmcnull_softc *sc;
 union ccb *ccb;
 struct ccb_mmcio *mmcio;

 sc = (struct mmcnull_softc *) xsc;
 mtx_assert(&sc->sc_mtx, MA_OWNED);

 ccb = sc->cur_ccb;
 mmcio = &ccb->mmcio;
 device_printf(sc->dev, "mmcnull_intr: MMC command = %d\n",
        mmcio->cmd.opcode);

 switch (mmcio->cmd.opcode) {
 case 134:
  device_printf(sc->dev, "Reset device\n");
  break;
 case 129:
  mmcio->cmd.resp[0] = 0x1AA;
  break;
 case 135:
  mmcio->cmd.resp[0] = R1_APP_CMD;
  break;
 case 128:
 case 131:
  mmcio->cmd.resp[0] = 0x1 << 16;
  break;
 case 137:
  mmcio->cmd.resp[0] = 0xc0ff8000;
  mmcio->cmd.resp[0] |= MMC_OCR_CARD_BUSY;
  break;
 case 136:

  mmcio->cmd.resp[0] = 0x1b534d30;
  mmcio->cmd.resp[1] = 0x30303030;
  mmcio->cmd.resp[2] = 0x10842806;
  mmcio->cmd.resp[3] = 0x5700e900;
  break;
 case 130:

  mmcio->cmd.resp[0] = 0x400e0032;
  mmcio->cmd.resp[1] = 0x5b590000;
  mmcio->cmd.resp[2] = 0x751f7f80;
  mmcio->cmd.resp[3] = 0x0a404000;
  break;
 case 132:
 case 133:
  strcpy(mmcio->cmd.data->data, "WTF?!");
  break;
 default:
  device_printf(sc->dev, "mmcnull_intr_sd: unknown command\n");
  mmcio->cmd.error = 1;
 }
 ccb->ccb_h.status = CAM_REQ_CMP;

 sc->cur_ccb = ((void*)0);
 xpt_done(ccb);
}
