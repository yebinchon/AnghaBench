
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_8__ {int * payload; } ;
struct TYPE_5__ {int dest_hi; int dest_lo; int data; int tcode; } ;
struct TYPE_6__ {TYPE_1__ wreqq; } ;
struct fw_pkt {TYPE_2__ mode; } ;
struct TYPE_7__ {int payload; struct fw_pkt hdr; } ;
struct fw_xfer {int fc; TYPE_4__ recv; TYPE_3__ send; } ;
struct fw_device {int dst; } ;
typedef int caddr_t ;


 int FWTCODE_WREQQ ;
 scalar_t__ fw_asyreq (int ,int,struct fw_xfer*) ;
 int fw_xfer_free (struct fw_xfer*) ;
 scalar_t__ fwmem_debug ;
 struct fw_xfer* fwmem_xfer_req (struct fw_device*,int ,int ,int ,int ,void (*) (struct fw_xfer*)) ;
 int printf (char*,int,int,int,int) ;

struct fw_xfer *
fwmem_write_quad(
 struct fw_device *fwdev,
 caddr_t sc,
 uint8_t spd,
 uint16_t dst_hi,
 uint32_t dst_lo,
 void *data,
 void (*hand)(struct fw_xfer *))
{
 struct fw_xfer *xfer;
 struct fw_pkt *fp;

 xfer = fwmem_xfer_req(fwdev, sc, spd, 0, 0, hand);
 if (xfer == ((void*)0))
  return ((void*)0);

 fp = &xfer->send.hdr;
 fp->mode.wreqq.tcode = FWTCODE_WREQQ;
 fp->mode.wreqq.dest_hi = dst_hi;
 fp->mode.wreqq.dest_lo = dst_lo;
 fp->mode.wreqq.data = *(uint32_t *)data;

 xfer->send.payload = xfer->recv.payload = ((void*)0);

 if (fwmem_debug)
  printf("fwmem_write_quad: %d %04x:%08x %08x\n", fwdev->dst,
      dst_hi, dst_lo, *(uint32_t *)data);

 if (fw_asyreq(xfer->fc, -1, xfer) == 0)
  return xfer;

 fw_xfer_free(xfer);
 return ((void*)0);
}
