
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct zbuf {int dummy; } ;
struct thread {int dummy; } ;
struct bpf_zbuf_header {int dummy; } ;
struct bpf_zbuf {scalar_t__ bz_buflen; int * bz_bufb; int * bz_bufa; } ;
struct bpf_d {scalar_t__ bd_bufmode; scalar_t__ bd_bufsize; scalar_t__ bd_hlen; scalar_t__ bd_slen; int * bd_sbuf; int * bd_fbuf; int * bd_bif; int * bd_hbuf; } ;
typedef void* caddr_t ;


 int BPFD_LOCK (struct bpf_d*) ;
 int BPFD_UNLOCK (struct bpf_d*) ;
 scalar_t__ BPF_BUFMODE_ZBUF ;
 int EINVAL ;
 int KASSERT (int,char*) ;
 int zbuf_free (struct zbuf*) ;
 int zbuf_setup (struct thread*,int ,scalar_t__,struct zbuf**) ;

int
bpf_zerocopy_ioctl_setzbuf(struct thread *td, struct bpf_d *d,
    struct bpf_zbuf *bz)
{
 struct zbuf *zba, *zbb;
 int error;

 KASSERT(d->bd_bufmode == BPF_BUFMODE_ZBUF,
     ("bpf_zerocopy_ioctl_setzbuf: not in zbuf mode"));




 if (bz->bz_bufa == ((void*)0) || bz->bz_bufb == ((void*)0))
  return (EINVAL);





 if (bz->bz_buflen == 0)
  return (EINVAL);




 error = zbuf_setup(td, (vm_offset_t)bz->bz_bufa, bz->bz_buflen,
     &zba);
 if (error)
  return (error);
 error = zbuf_setup(td, (vm_offset_t)bz->bz_bufb, bz->bz_buflen,
     &zbb);
 if (error) {
  zbuf_free(zba);
  return (error);
 }





 BPFD_LOCK(d);
 if (d->bd_hbuf != ((void*)0) || d->bd_sbuf != ((void*)0) || d->bd_fbuf != ((void*)0) ||
     d->bd_bif != ((void*)0)) {
  BPFD_UNLOCK(d);
  zbuf_free(zba);
  zbuf_free(zbb);
  return (EINVAL);
 }





 d->bd_fbuf = (caddr_t)zbb;
 d->bd_sbuf = (caddr_t)zba;
 d->bd_slen = 0;
 d->bd_hlen = 0;





 d->bd_bufsize = bz->bz_buflen - sizeof(struct bpf_zbuf_header);
 BPFD_UNLOCK(d);
 return (0);
}
