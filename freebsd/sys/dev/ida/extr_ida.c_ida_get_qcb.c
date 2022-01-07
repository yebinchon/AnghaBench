
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ida_softc {int free_qcbs; } ;
struct ida_req {int dummy; } ;
struct ida_qcb {int hwqcb; } ;
struct ida_hdr {int dummy; } ;
struct TYPE_2__ {int sle; } ;


 struct ida_qcb* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int bzero (int ,int) ;
 TYPE_1__ link ;

__attribute__((used)) static __inline struct ida_qcb *
ida_get_qcb(struct ida_softc *ida)
{
 struct ida_qcb *qcb;

 if ((qcb = SLIST_FIRST(&ida->free_qcbs)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&ida->free_qcbs, link.sle);
  bzero(qcb->hwqcb, sizeof(struct ida_hdr) + sizeof(struct ida_req));
 }
 return (qcb);
}
