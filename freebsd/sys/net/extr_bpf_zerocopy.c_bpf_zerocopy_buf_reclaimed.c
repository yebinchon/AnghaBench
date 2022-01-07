
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zbuf {int zb_flags; } ;
struct bpf_d {scalar_t__ bd_bufmode; int * bd_fbuf; } ;


 scalar_t__ BPF_BUFMODE_ZBUF ;
 int KASSERT (int,char*) ;
 int ZBUF_FLAG_ASSIGNED ;

void
bpf_zerocopy_buf_reclaimed(struct bpf_d *d)
{
 struct zbuf *zb;

 KASSERT(d->bd_bufmode == BPF_BUFMODE_ZBUF,
     ("bpf_zerocopy_reclaim_buf: not in zbuf mode"));

 KASSERT(d->bd_fbuf != ((void*)0),
     ("bpf_zerocopy_buf_reclaimed: NULL free buf"));
 zb = (struct zbuf *)d->bd_fbuf;
 zb->zb_flags &= ~ZBUF_FLAG_ASSIGNED;
}
