
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_7__ {scalar_t__ active_keyid; } ;
struct TYPE_8__ {int shared_keys; TYPE_1__ authinfo; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct TYPE_9__ {int refcount; } ;
typedef TYPE_3__ sctp_sharedkey_t ;


 int LIST_REMOVE (TYPE_3__*,int ) ;
 int next ;
 int sctp_clear_cachedkeys (struct sctp_tcb*,scalar_t__) ;
 TYPE_3__* sctp_find_sharedkey (int *,scalar_t__) ;
 int sctp_free_sharedkey (TYPE_3__*) ;

int
sctp_delete_sharedkey(struct sctp_tcb *stcb, uint16_t keyid)
{
 sctp_sharedkey_t *skey;

 if (stcb == ((void*)0))
  return (-1);


 if (keyid == stcb->asoc.authinfo.active_keyid)
  return (-1);


 skey = sctp_find_sharedkey(&stcb->asoc.shared_keys, keyid);
 if (skey == ((void*)0))
  return (-1);


 if (skey->refcount > 1)
  return (-1);


 LIST_REMOVE(skey, next);
 sctp_free_sharedkey(skey);


 sctp_clear_cachedkeys(stcb, keyid);
 return (0);
}
