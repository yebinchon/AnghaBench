
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_type {int dummy; } ;
struct fw_xferlist {int dummy; } ;
struct fw_xfer {void (* hand ) (struct fw_xfer*) ;void* sc; struct firewire_comm* fc; } ;
struct firewire_comm {int dummy; } ;


 int STAILQ_INSERT_TAIL (struct fw_xferlist*,struct fw_xfer*,int ) ;
 struct fw_xfer* fw_xfer_alloc_buf (struct malloc_type*,int,int) ;
 int link ;
 int splfw () ;
 int splx (int) ;

int
fw_xferlist_add(struct fw_xferlist *q, struct malloc_type *type,
    int slen, int rlen, int n,
    struct firewire_comm *fc, void *sc, void (*hand)(struct fw_xfer *))
{
 int i, s;
 struct fw_xfer *xfer;

 for (i = 0; i < n; i++) {
  xfer = fw_xfer_alloc_buf(type, slen, rlen);
  if (xfer == ((void*)0))
   return (i);
  xfer->fc = fc;
  xfer->sc = sc;
  xfer->hand = hand;
  s = splfw();
  STAILQ_INSERT_TAIL(q, xfer, link);
  splx(s);
 }
 return (n);
}
