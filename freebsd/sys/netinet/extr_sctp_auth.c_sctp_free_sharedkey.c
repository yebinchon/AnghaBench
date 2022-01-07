
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * key; int refcount; } ;
typedef TYPE_1__ sctp_sharedkey_t ;


 scalar_t__ SCTP_DECREMENT_AND_CHECK_REFCOUNT (int *) ;
 int SCTP_FREE (TYPE_1__*,int ) ;
 int SCTP_M_AUTH_KY ;
 int sctp_free_key (int *) ;

void
sctp_free_sharedkey(sctp_sharedkey_t *skey)
{
 if (skey == ((void*)0))
  return;

 if (SCTP_DECREMENT_AND_CHECK_REFCOUNT(&skey->refcount)) {
  if (skey->key != ((void*)0))
   sctp_free_key(skey->key);
  SCTP_FREE(skey, SCTP_M_AUTH_KY);
 }
}
