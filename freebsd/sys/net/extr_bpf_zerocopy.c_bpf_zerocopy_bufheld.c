
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zbuf {int zb_flags; TYPE_1__* zb_header; } ;
struct bpf_d {scalar_t__ bd_bufmode; int bd_hlen; scalar_t__ bd_hbuf; } ;
struct TYPE_2__ {int bzh_kernel_gen; int bzh_kernel_len; } ;


 scalar_t__ BPF_BUFMODE_ZBUF ;
 int KASSERT (int,char*) ;
 int ZBUF_FLAG_ASSIGNED ;
 int atomic_add_rel_int (int *,int) ;

void
bpf_zerocopy_bufheld(struct bpf_d *d)
{
 struct zbuf *zb;

 KASSERT(d->bd_bufmode == BPF_BUFMODE_ZBUF,
     ("bpf_zerocopy_bufheld: not in zbuf mode"));

 zb = (struct zbuf *)d->bd_hbuf;
 KASSERT(zb != ((void*)0), ("bpf_zerocopy_bufheld: zb == NULL"));

 if ((zb->zb_flags & ZBUF_FLAG_ASSIGNED) == 0) {
  zb->zb_flags |= ZBUF_FLAG_ASSIGNED;
  zb->zb_header->bzh_kernel_len = d->bd_hlen;
  atomic_add_rel_int(&zb->zb_header->bzh_kernel_gen, 1);
 }
}
