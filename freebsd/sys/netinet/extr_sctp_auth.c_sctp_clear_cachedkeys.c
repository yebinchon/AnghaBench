
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ assoc_keyid; scalar_t__ recv_keyid; int * recv_key; int * assoc_key; } ;
struct TYPE_3__ {TYPE_2__ authinfo; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;


 int sctp_free_key (int *) ;

void
sctp_clear_cachedkeys(struct sctp_tcb *stcb, uint16_t keyid)
{
 if (stcb == ((void*)0))
  return;

 if (keyid == stcb->asoc.authinfo.assoc_keyid) {
  sctp_free_key(stcb->asoc.authinfo.assoc_key);
  stcb->asoc.authinfo.assoc_key = ((void*)0);
 }
 if (keyid == stcb->asoc.authinfo.recv_keyid) {
  sctp_free_key(stcb->asoc.authinfo.recv_key);
  stcb->asoc.authinfo.recv_key = ((void*)0);
 }
}
