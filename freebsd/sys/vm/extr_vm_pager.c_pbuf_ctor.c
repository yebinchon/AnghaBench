
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {scalar_t__ b_error; int * b_iodone; scalar_t__ b_ioflags; scalar_t__ b_flags; scalar_t__ b_xflags; int b_kvabase; int b_data; scalar_t__ b_qindex; void* b_wcred; void* b_rcred; int * b_bufobj; int * b_vp; } ;


 int BUF_LOCK (struct buf*,int ,int *) ;
 int LK_EXCLUSIVE ;
 void* NOCRED ;

__attribute__((used)) static int
pbuf_ctor(void *mem, int size, void *arg, int flags)
{
 struct buf *bp = mem;

 bp->b_vp = ((void*)0);
 bp->b_bufobj = ((void*)0);


 bp->b_rcred = NOCRED;
 bp->b_wcred = NOCRED;
 bp->b_qindex = 0;
 bp->b_data = bp->b_kvabase;
 bp->b_xflags = 0;
 bp->b_flags = 0;
 bp->b_ioflags = 0;
 bp->b_iodone = ((void*)0);
 bp->b_error = 0;
 BUF_LOCK(bp, LK_EXCLUSIVE, ((void*)0));

 return (0);
}
