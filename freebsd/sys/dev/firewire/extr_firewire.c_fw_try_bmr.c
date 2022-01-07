
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dest_hi; int len; int dst; int dest_lo; int extcode; scalar_t__ src; scalar_t__ pri; int tcode; scalar_t__ tlrt; } ;
struct TYPE_5__ {TYPE_1__ lreq; } ;
struct fw_pkt {TYPE_2__ mode; } ;
struct TYPE_6__ {void** payload; struct fw_pkt hdr; scalar_t__ spd; } ;
struct fw_xfer {int hand; TYPE_3__ send; } ;
struct firewire_comm {int irm; int nodeid; int status; } ;


 int BUS_MGR_ID ;
 int EXTCODE_CMP_SWAP ;
 int FWBUSMGRELECT ;
 int FWLOCALBUS ;
 int FWTCODE_LREQ ;
 int M_FWXFER ;
 int fw_asyreq (struct firewire_comm*,int,struct fw_xfer*) ;
 int fw_try_bmr_callback ;
 struct fw_xfer* fw_xfer_alloc_buf (int ,int,int) ;
 int fw_xfer_free_buf (struct fw_xfer*) ;
 void* htonl (int) ;

__attribute__((used)) static void
fw_try_bmr(void *arg)
{
 struct fw_xfer *xfer;
 struct firewire_comm *fc = arg;
 struct fw_pkt *fp;
 int err = 0;

 xfer = fw_xfer_alloc_buf(M_FWXFER, 8, 4);
 if (xfer == ((void*)0))
  return;
 xfer->send.spd = 0;
 fc->status = FWBUSMGRELECT;

 fp = &xfer->send.hdr;
 fp->mode.lreq.dest_hi = 0xffff;
 fp->mode.lreq.tlrt = 0;
 fp->mode.lreq.tcode = FWTCODE_LREQ;
 fp->mode.lreq.pri = 0;
 fp->mode.lreq.src = 0;
 fp->mode.lreq.len = 8;
 fp->mode.lreq.extcode = EXTCODE_CMP_SWAP;
 fp->mode.lreq.dst = FWLOCALBUS | fc->irm;
 fp->mode.lreq.dest_lo = 0xf0000000 | BUS_MGR_ID;
 xfer->send.payload[0] = htonl(0x3f);
 xfer->send.payload[1] = htonl(fc->nodeid);
 xfer->hand = fw_try_bmr_callback;

 err = fw_asyreq(fc, -1, xfer);
 if (err) {
  fw_xfer_free_buf(xfer);
  return;
 }
 return;
}
