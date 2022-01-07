
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zbuf {scalar_t__ zb_uaddr; } ;
struct thread {int dummy; } ;
struct bpf_zbuf {int bz_buflen; void* bz_bufa; } ;
struct bpf_d {scalar_t__ bd_slen; int bd_hlen; int * bd_hbuf; } ;


 int BPFD_LOCK (struct bpf_d*) ;
 int BPFD_UNLOCK (struct bpf_d*) ;
 int ROTATE_BUFFERS (struct bpf_d*) ;
 int bzero (struct bpf_zbuf*,int) ;

int
bpf_zerocopy_ioctl_rotzbuf(struct thread *td, struct bpf_d *d,
    struct bpf_zbuf *bz)
{
 struct zbuf *bzh;

 bzero(bz, sizeof(*bz));
 BPFD_LOCK(d);
 if (d->bd_hbuf == ((void*)0) && d->bd_slen != 0) {
  ROTATE_BUFFERS(d);
  bzh = (struct zbuf *)d->bd_hbuf;
  bz->bz_bufa = (void *)bzh->zb_uaddr;
  bz->bz_buflen = d->bd_hlen;
 }
 BPFD_UNLOCK(d);
 return (0);
}
