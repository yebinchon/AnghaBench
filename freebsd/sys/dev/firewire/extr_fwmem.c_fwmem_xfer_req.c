
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int pay_len; } ;
struct TYPE_6__ {int dst; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
struct TYPE_8__ {TYPE_2__ mode; } ;
struct TYPE_9__ {int pay_len; int spd; TYPE_3__ hdr; } ;
struct fw_xfer {TYPE_5__ recv; TYPE_4__ send; int sc; void* hand; int fc; } ;
struct fw_device {int dst; int speed; int fc; } ;
typedef int caddr_t ;


 int FWLOCALBUS ;
 int M_FWMEM ;
 struct fw_xfer* fw_xfer_alloc (int ) ;
 int min (int,int ) ;

__attribute__((used)) static struct fw_xfer *
fwmem_xfer_req(
 struct fw_device *fwdev,
 caddr_t sc,
 int spd,
 int slen,
 int rlen,
 void *hand)
{
 struct fw_xfer *xfer;

 xfer = fw_xfer_alloc(M_FWMEM);
 if (xfer == ((void*)0))
  return ((void*)0);

 xfer->fc = fwdev->fc;
 xfer->send.hdr.mode.hdr.dst = FWLOCALBUS | fwdev->dst;
 if (spd < 0)
  xfer->send.spd = fwdev->speed;
 else
  xfer->send.spd = min(spd, fwdev->speed);
 xfer->hand = hand;
 xfer->sc = sc;
 xfer->send.pay_len = slen;
 xfer->recv.pay_len = rlen;

 return xfer;
}
