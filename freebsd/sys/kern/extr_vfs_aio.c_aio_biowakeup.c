
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
struct proc {struct kaioinfo* p_aioinfo; } ;
struct kaioinfo {int kaio_buffer_count; } ;
struct TYPE_3__ {size_t aio_nbytes; scalar_t__ aio_lio_opcode; } ;
struct kaiocb {int outblock; int inblock; TYPE_1__ uaiocb; struct bio* bp; int npages; int pages; TYPE_2__* pbuf; struct proc* userproc; } ;
struct bio {size_t bio_resid; int bio_flags; int bio_error; scalar_t__ bio_caller1; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;


 int AIO_LOCK (struct kaioinfo*) ;
 int AIO_UNLOCK (struct kaioinfo*) ;
 int BIO_ERROR ;
 scalar_t__ LIO_WRITE ;
 int aio_complete (struct kaiocb*,size_t,int) ;
 int atomic_subtract_int (int *,int) ;
 int btodb (size_t) ;
 int g_destroy_bio (struct bio*) ;
 int num_buf_aio ;
 int num_unmapped_aio ;
 int pbuf_zone ;
 int pmap_qremove (int ,int ) ;
 int uma_zfree (int ,TYPE_2__*) ;
 int vm_page_unhold_pages (int ,int ) ;

__attribute__((used)) static void
aio_biowakeup(struct bio *bp)
{
 struct kaiocb *job = (struct kaiocb *)bp->bio_caller1;
 struct proc *userp;
 struct kaioinfo *ki;
 size_t nbytes;
 int error, nblks;


 userp = job->userproc;
 ki = userp->p_aioinfo;
 if (job->pbuf) {
  pmap_qremove((vm_offset_t)job->pbuf->b_data, job->npages);
  uma_zfree(pbuf_zone, job->pbuf);
  job->pbuf = ((void*)0);
  atomic_subtract_int(&num_buf_aio, 1);
  AIO_LOCK(ki);
  ki->kaio_buffer_count--;
  AIO_UNLOCK(ki);
 } else
  atomic_subtract_int(&num_unmapped_aio, 1);
 vm_page_unhold_pages(job->pages, job->npages);

 bp = job->bp;
 job->bp = ((void*)0);
 nbytes = job->uaiocb.aio_nbytes - bp->bio_resid;
 error = 0;
 if (bp->bio_flags & BIO_ERROR)
  error = bp->bio_error;
 nblks = btodb(nbytes);
 if (job->uaiocb.aio_lio_opcode == LIO_WRITE)
  job->outblock += nblks;
 else
  job->inblock += nblks;

 if (error)
  aio_complete(job, -1, error);
 else
  aio_complete(job, nbytes, 0);

 g_destroy_bio(bp);
}
