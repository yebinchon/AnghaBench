
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int keyid; TYPE_2__* key; } ;
typedef TYPE_1__ sctp_sharedkey_t ;
struct TYPE_7__ {int keylen; int key; } ;


 TYPE_1__* sctp_alloc_sharedkey () ;
 TYPE_2__* sctp_set_key (int ,int ) ;

__attribute__((used)) static sctp_sharedkey_t *
sctp_copy_sharedkey(const sctp_sharedkey_t *skey)
{
 sctp_sharedkey_t *new_skey;

 if (skey == ((void*)0))
  return (((void*)0));
 new_skey = sctp_alloc_sharedkey();
 if (new_skey == ((void*)0))
  return (((void*)0));
 if (skey->key != ((void*)0))
  new_skey->key = sctp_set_key(skey->key->key, skey->key->keylen);
 else
  new_skey->key = ((void*)0);
 new_skey->keyid = skey->keyid;
 return (new_skey);
}
