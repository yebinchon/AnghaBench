
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct bpf_d {void* bd_fbuf; void* bd_sbuf; scalar_t__ bd_hlen; scalar_t__ bd_slen; int * bd_hbuf; scalar_t__ bd_bufsize; int * bd_bif; } ;
typedef void* caddr_t ;


 int BPFD_LOCK (struct bpf_d*) ;
 int BPFD_UNLOCK (struct bpf_d*) ;
 scalar_t__ BPF_MINBUFSIZE ;
 int EINVAL ;
 int M_BPF ;
 int M_WAITOK ;
 scalar_t__ bpf_maxbufsize ;
 int free (void*,int ) ;
 scalar_t__ malloc (scalar_t__,int ,int ) ;

int
bpf_buffer_ioctl_sblen(struct bpf_d *d, u_int *i)
{
 u_int size;
 caddr_t fbuf, sbuf;

 size = *i;
 if (size > bpf_maxbufsize)
  *i = size = bpf_maxbufsize;
 else if (size < BPF_MINBUFSIZE)
  *i = size = BPF_MINBUFSIZE;


 fbuf = (caddr_t)malloc(size, M_BPF, M_WAITOK);
 sbuf = (caddr_t)malloc(size, M_BPF, M_WAITOK);

 BPFD_LOCK(d);
 if (d->bd_bif != ((void*)0)) {

  BPFD_UNLOCK(d);
  free(fbuf, M_BPF);
  free(sbuf, M_BPF);
  return (EINVAL);
 }


 if (d->bd_fbuf != ((void*)0))
  free(d->bd_fbuf, M_BPF);
 if (d->bd_sbuf != ((void*)0))
  free(d->bd_sbuf, M_BPF);


 d->bd_bufsize = size;
 d->bd_fbuf = fbuf;
 d->bd_sbuf = sbuf;

 d->bd_hbuf = ((void*)0);
 d->bd_slen = 0;
 d->bd_hlen = 0;

 BPFD_UNLOCK(d);
 return (0);
}
