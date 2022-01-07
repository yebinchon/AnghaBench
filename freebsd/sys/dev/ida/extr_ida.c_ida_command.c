
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct ida_softc {int dev; int lock; } ;
struct ida_qcb {int flags; int error; struct ida_hardware_qcb* hwqcb; } ;
struct TYPE_4__ {int command; int bcount; int blkno; } ;
struct TYPE_3__ {int drive; } ;
struct ida_hardware_qcb {TYPE_2__ req; TYPE_1__ hdr; } ;


 int DEV_BSIZE ;
 int EAGAIN ;
 int IDA_COMMAND ;
 int MA_OWNED ;
 int device_printf (int ,char*) ;
 int dumping ;
 int howmany (int,int ) ;
 int htole16 (int ) ;
 int htole32 (int ) ;
 int ida_free_qcb (struct ida_softc*,struct ida_qcb*) ;
 struct ida_qcb* ida_get_qcb (struct ida_softc*) ;
 int ida_map_qcb (struct ida_softc*,struct ida_qcb*,void*,int) ;
 int ida_wait (struct ida_softc*,struct ida_qcb*) ;
 int mtx_assert (int *,int ) ;

int
ida_command(struct ida_softc *ida, int command, void *data, int datasize,
 int drive, u_int32_t pblkno, int flags)
{
 struct ida_hardware_qcb *hwqcb;
 struct ida_qcb *qcb;
 int error;

 if (!dumping)
  mtx_assert(&ida->lock, MA_OWNED);
 qcb = ida_get_qcb(ida);

 if (qcb == ((void*)0)) {
  device_printf(ida->dev, "out of QCBs\n");
  return (EAGAIN);
 }

 qcb->flags = flags | IDA_COMMAND;
 hwqcb = qcb->hwqcb;
 hwqcb->hdr.drive = drive;
 hwqcb->req.blkno = htole32(pblkno);
 hwqcb->req.bcount = htole16(howmany(datasize, DEV_BSIZE));
 hwqcb->req.command = command;

 error = ida_map_qcb(ida, qcb, data, datasize);
 if (error == 0) {
  error = ida_wait(ida, qcb);

  if (error)
   return (error);
  error = qcb->error;
 }




 ida_free_qcb(ida, qcb);
 return (error);
}
