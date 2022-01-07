
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zbuf {TYPE_1__* zb_header; } ;
struct bpf_d {scalar_t__ bd_bufmode; scalar_t__ bd_hbuf; } ;
struct TYPE_2__ {scalar_t__ bzh_kernel_gen; int bzh_user_gen; } ;


 scalar_t__ BPF_BUFMODE_ZBUF ;
 int KASSERT (int,char*) ;
 scalar_t__ atomic_load_acq_int (int *) ;

int
bpf_zerocopy_canfreebuf(struct bpf_d *d)
{
 struct zbuf *zb;

 KASSERT(d->bd_bufmode == BPF_BUFMODE_ZBUF,
     ("bpf_zerocopy_canfreebuf: not in zbuf mode"));

 zb = (struct zbuf *)d->bd_hbuf;
 if (zb == ((void*)0))
  return (0);
 if (zb->zb_header->bzh_kernel_gen ==
     atomic_load_acq_int(&zb->zb_header->bzh_user_gen))
  return (1);
 return (0);
}
