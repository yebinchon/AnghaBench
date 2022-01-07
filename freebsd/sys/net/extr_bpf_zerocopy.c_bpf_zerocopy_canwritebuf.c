
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zbuf {int zb_flags; } ;
struct bpf_d {scalar_t__ bd_bufmode; scalar_t__ bd_sbuf; } ;


 scalar_t__ BPF_BUFMODE_ZBUF ;
 int KASSERT (int,char*) ;
 int ZBUF_FLAG_ASSIGNED ;

int
bpf_zerocopy_canwritebuf(struct bpf_d *d)
{
 struct zbuf *zb;

 KASSERT(d->bd_bufmode == BPF_BUFMODE_ZBUF,
     ("bpf_zerocopy_canwritebuf: not in zbuf mode"));

 zb = (struct zbuf *)d->bd_sbuf;
 KASSERT(zb != ((void*)0), ("bpf_zerocopy_canwritebuf: bd_sbuf NULL"));

 if (zb->zb_flags & ZBUF_FLAG_ASSIGNED)
  return (0);
 return (1);
}
