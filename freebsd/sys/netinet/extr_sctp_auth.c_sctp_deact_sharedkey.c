
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ active_keyid; } ;
struct TYPE_6__ {int shared_keys; TYPE_1__ authinfo; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct TYPE_7__ {int refcount; int deactivated; } ;
typedef TYPE_3__ sctp_sharedkey_t ;


 int SCTP_NOTIFY_AUTH_FREE_KEY ;
 int SCTP_SO_LOCKED ;
 TYPE_3__* sctp_find_sharedkey (int *,scalar_t__) ;
 int sctp_ulp_notify (int ,struct sctp_tcb*,scalar_t__,int ,int ) ;

int
sctp_deact_sharedkey(struct sctp_tcb *stcb, uint16_t keyid)
{
 sctp_sharedkey_t *skey;

 if (stcb == ((void*)0))
  return (-1);


 if (keyid == stcb->asoc.authinfo.active_keyid)
  return (-1);


 skey = sctp_find_sharedkey(&stcb->asoc.shared_keys, keyid);
 if (skey == ((void*)0))
  return (-1);


 if (skey->refcount == 1) {

  sctp_ulp_notify(SCTP_NOTIFY_AUTH_FREE_KEY, stcb, keyid, 0,
      SCTP_SO_LOCKED);
 }


 skey->deactivated = 1;

 return (0);
}
