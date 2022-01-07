
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_xferlist {int dummy; } ;
struct fw_xfer {int dummy; } ;


 struct fw_xfer* STAILQ_FIRST (struct fw_xferlist*) ;
 int STAILQ_INIT (struct fw_xferlist*) ;
 struct fw_xfer* STAILQ_NEXT (struct fw_xfer*,int ) ;
 int fw_xfer_free_buf (struct fw_xfer*) ;
 int link ;

void
fw_xferlist_remove(struct fw_xferlist *q)
{
 struct fw_xfer *xfer, *next;

 for (xfer = STAILQ_FIRST(q); xfer != ((void*)0); xfer = next) {
  next = STAILQ_NEXT(xfer, link);
  fw_xfer_free_buf(xfer);
 }
 STAILQ_INIT(q);
}
