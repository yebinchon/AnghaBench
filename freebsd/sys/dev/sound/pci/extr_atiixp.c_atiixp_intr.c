
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int flags; int channel; } ;
struct TYPE_3__ {int flags; int channel; } ;
struct atiixp_info {scalar_t__ polling; int codec_not_ready_bits; TYPE_2__ rch; TYPE_1__ pch; int dev; } ;


 int ATI_IXP_CHN_RUNNING ;
 int ATI_REG_IER ;
 int ATI_REG_ISR ;
 int ATI_REG_ISR_IN_STATUS ;
 int ATI_REG_ISR_IN_XRUN ;
 int ATI_REG_ISR_OUT_STATUS ;
 int ATI_REG_ISR_OUT_XRUN ;
 int CODEC_CHECK_BITS ;
 int atiixp_lock (struct atiixp_info*) ;
 int atiixp_rd (struct atiixp_info*,int ) ;
 int atiixp_unlock (struct atiixp_info*) ;
 int atiixp_wr (struct atiixp_info*,int ,int) ;
 int chn_intr (int ) ;
 int device_printf (int ,char*) ;
 int wakeup (struct atiixp_info*) ;

__attribute__((used)) static void
atiixp_intr(void *p)
{
 struct atiixp_info *sc = p;
 uint32_t status, enable, detected_codecs;
 uint32_t trigger = 0;

 atiixp_lock(sc);
 if (sc->polling != 0) {
  atiixp_unlock(sc);
  return;
 }
 status = atiixp_rd(sc, ATI_REG_ISR);

 if (status == 0) {
  atiixp_unlock(sc);
  return;
 }

 if ((status & ATI_REG_ISR_OUT_STATUS) &&
     (sc->pch.flags & ATI_IXP_CHN_RUNNING))
  trigger |= 1;
 if ((status & ATI_REG_ISR_IN_STATUS) &&
     (sc->rch.flags & ATI_IXP_CHN_RUNNING))
  trigger |= 2;
 if (status & CODEC_CHECK_BITS) {

  detected_codecs = status & CODEC_CHECK_BITS;
  sc->codec_not_ready_bits |= detected_codecs;


  enable = atiixp_rd(sc, ATI_REG_IER);
  enable &= ~detected_codecs;
  atiixp_wr(sc, ATI_REG_IER, enable);
  wakeup(sc);
 }


 atiixp_wr(sc, ATI_REG_ISR, status);
 atiixp_unlock(sc);

 if (trigger & 1)
  chn_intr(sc->pch.channel);
 if (trigger & 2)
  chn_intr(sc->rch.channel);
}
