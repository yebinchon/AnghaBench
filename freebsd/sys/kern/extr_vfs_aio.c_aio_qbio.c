
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_offset_t ;
struct TYPE_4__ {int bo_bsize; } ;
struct vnode {scalar_t__ v_type; TYPE_1__ v_bufobj; } ;
struct proc {struct kaioinfo* p_aioinfo; } ;
struct kaioinfo {scalar_t__ kaio_buffer_count; } ;
struct aiocb {scalar_t__ aio_lio_opcode; int aio_nbytes; int aio_offset; scalar_t__ aio_buf; } ;
struct kaiocb {struct bio* bp; struct buf* pbuf; int npages; int pages; struct file* fd_file; struct aiocb uaiocb; } ;
struct file {scalar_t__ f_type; struct vnode* f_vnode; } ;
struct cdevsw {int d_flags; int (* d_strategy ) (struct bio*) ;} ;
struct cdev {int si_iosize_max; int si_flags; } ;
struct buf {void* b_data; } ;
struct bio {int bio_length; int bio_bcount; int bio_ma_offset; int bio_flags; void* bio_data; int bio_ma_n; int bio_ma; void* bio_caller1; struct cdev* bio_dev; int bio_cmd; int bio_offset; int bio_done; } ;
struct TYPE_6__ {TYPE_2__* p_vmspace; } ;
struct TYPE_5__ {int vm_map; } ;


 int AIO_LOCK (struct kaioinfo*) ;
 int AIO_UNLOCK (struct kaioinfo*) ;
 int BIO_READ ;
 int BIO_UNMAPPED ;
 int BIO_WRITE ;
 int BUF_KERNPROC (struct buf*) ;
 scalar_t__ DTYPE_VNODE ;
 int D_DISK ;
 int EAGAIN ;
 int EFAULT ;
 int ENXIO ;
 scalar_t__ LIO_READ ;
 scalar_t__ LIO_WRITE ;
 int MAXPHYS ;
 int M_WAITOK ;
 int PAGE_MASK ;
 int SI_UNMAPPED ;
 scalar_t__ VCHR ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int aio_biowakeup ;
 int atomic_add_int (int *,int) ;
 TYPE_3__* curproc ;
 int dev_relthread (struct cdev*,int) ;
 struct cdevsw* devvn_refthread (struct vnode*,struct cdev**,int*) ;
 struct bio* g_alloc_bio () ;
 int g_destroy_bio (struct bio*) ;
 scalar_t__ max_buf_aio ;
 int nitems (int ) ;
 int num_buf_aio ;
 int num_unmapped_aio ;
 int pbuf_zone ;
 int pmap_qenter (int,int ,int ) ;
 int stub1 (struct bio*) ;
 struct buf* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct buf*) ;
 void* unmapped_buf ;
 scalar_t__ unmapped_buf_allowed ;
 int vm_fault_quick_hold_pages (int *,int,int,int ,int ,int ) ;

__attribute__((used)) static int
aio_qbio(struct proc *p, struct kaiocb *job)
{
 struct aiocb *cb;
 struct file *fp;
 struct bio *bp;
 struct buf *pbuf;
 struct vnode *vp;
 struct cdevsw *csw;
 struct cdev *dev;
 struct kaioinfo *ki;
 int error, ref, poff;
 vm_prot_t prot;

 cb = &job->uaiocb;
 fp = job->fd_file;

 if (!(cb->aio_lio_opcode == LIO_WRITE ||
     cb->aio_lio_opcode == LIO_READ))
  return (-1);
 if (fp == ((void*)0) || fp->f_type != DTYPE_VNODE)
  return (-1);

 vp = fp->f_vnode;
 if (vp->v_type != VCHR)
  return (-1);
 if (vp->v_bufobj.bo_bsize == 0)
  return (-1);
 if (cb->aio_nbytes % vp->v_bufobj.bo_bsize)
  return (-1);

 ref = 0;
 csw = devvn_refthread(vp, &dev, &ref);
 if (csw == ((void*)0))
  return (ENXIO);

 if ((csw->d_flags & D_DISK) == 0) {
  error = -1;
  goto unref;
 }
 if (cb->aio_nbytes > dev->si_iosize_max) {
  error = -1;
  goto unref;
 }

 ki = p->p_aioinfo;
 poff = (vm_offset_t)cb->aio_buf & PAGE_MASK;
 if ((dev->si_flags & SI_UNMAPPED) && unmapped_buf_allowed) {
  if (cb->aio_nbytes > MAXPHYS) {
   error = -1;
   goto unref;
  }

  pbuf = ((void*)0);
 } else {
  if (cb->aio_nbytes > MAXPHYS - poff) {
   error = -1;
   goto unref;
  }
  if (ki->kaio_buffer_count >= max_buf_aio) {
   error = EAGAIN;
   goto unref;
  }

  job->pbuf = pbuf = uma_zalloc(pbuf_zone, M_WAITOK);
  BUF_KERNPROC(pbuf);
  AIO_LOCK(ki);
  ki->kaio_buffer_count++;
  AIO_UNLOCK(ki);
 }
 job->bp = bp = g_alloc_bio();

 bp->bio_length = cb->aio_nbytes;
 bp->bio_bcount = cb->aio_nbytes;
 bp->bio_done = aio_biowakeup;
 bp->bio_data = (void *)(uintptr_t)cb->aio_buf;
 bp->bio_offset = cb->aio_offset;
 bp->bio_cmd = cb->aio_lio_opcode == LIO_WRITE ? BIO_WRITE : BIO_READ;
 bp->bio_dev = dev;
 bp->bio_caller1 = (void *)job;

 prot = VM_PROT_READ;
 if (cb->aio_lio_opcode == LIO_READ)
  prot |= VM_PROT_WRITE;
 job->npages = vm_fault_quick_hold_pages(&curproc->p_vmspace->vm_map,
     (vm_offset_t)bp->bio_data, bp->bio_length, prot, job->pages,
     nitems(job->pages));
 if (job->npages < 0) {
  error = EFAULT;
  goto doerror;
 }
 if (pbuf != ((void*)0)) {
  pmap_qenter((vm_offset_t)pbuf->b_data,
      job->pages, job->npages);
  bp->bio_data = pbuf->b_data + poff;
  atomic_add_int(&num_buf_aio, 1);
 } else {
  bp->bio_ma = job->pages;
  bp->bio_ma_n = job->npages;
  bp->bio_ma_offset = poff;
  bp->bio_data = unmapped_buf;
  bp->bio_flags |= BIO_UNMAPPED;
  atomic_add_int(&num_unmapped_aio, 1);
 }


 csw->d_strategy(bp);
 dev_relthread(dev, ref);
 return (0);

doerror:
 if (pbuf != ((void*)0)) {
  AIO_LOCK(ki);
  ki->kaio_buffer_count--;
  AIO_UNLOCK(ki);
  uma_zfree(pbuf_zone, pbuf);
  job->pbuf = ((void*)0);
 }
 g_destroy_bio(bp);
 job->bp = ((void*)0);
unref:
 dev_relthread(dev, ref);
 return (error);
}
