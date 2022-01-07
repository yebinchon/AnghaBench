
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zbuf {int dummy; } ;
struct bpf_d {scalar_t__ bd_bufmode; scalar_t__ bd_fbuf; scalar_t__ bd_hbuf; scalar_t__ bd_sbuf; } ;


 scalar_t__ BPF_BUFMODE_ZBUF ;
 int KASSERT (int,char*) ;
 int zbuf_free (struct zbuf*) ;

void
bpf_zerocopy_free(struct bpf_d *d)
{
 struct zbuf *zb;

 KASSERT(d->bd_bufmode == BPF_BUFMODE_ZBUF,
     ("bpf_zerocopy_free: not in zbuf mode"));

 zb = (struct zbuf *)d->bd_sbuf;
 if (zb != ((void*)0))
  zbuf_free(zb);
 zb = (struct zbuf *)d->bd_hbuf;
 if (zb != ((void*)0))
  zbuf_free(zb);
 zb = (struct zbuf *)d->bd_fbuf;
 if (zb != ((void*)0))
  zbuf_free(zb);
}
