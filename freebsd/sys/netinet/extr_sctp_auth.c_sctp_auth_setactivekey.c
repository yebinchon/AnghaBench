
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int active_keyid; } ;
struct TYPE_6__ {TYPE_1__ authinfo; int shared_keys; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct TYPE_7__ {int refcount; scalar_t__ deactivated; } ;
typedef TYPE_3__ sctp_sharedkey_t ;


 TYPE_3__* sctp_find_sharedkey (int *,int ) ;

int
sctp_auth_setactivekey(struct sctp_tcb *stcb, uint16_t keyid)
{
 sctp_sharedkey_t *skey = ((void*)0);


 skey = sctp_find_sharedkey(&stcb->asoc.shared_keys, keyid);
 if (skey == ((void*)0)) {

  return (-1);
 }
 if ((skey->deactivated) && (skey->refcount > 1)) {

  return (-1);
 }


 stcb->asoc.authinfo.active_keyid = keyid;

 skey->deactivated = 0;

 return (0);
}
