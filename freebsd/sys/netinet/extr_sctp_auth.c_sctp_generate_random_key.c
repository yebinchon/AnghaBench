
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int keylen; int key; } ;
typedef TYPE_1__ sctp_key_t ;


 int SCTP_READ_RANDOM (int ,int ) ;
 TYPE_1__* sctp_alloc_key (int ) ;

sctp_key_t *
sctp_generate_random_key(uint32_t keylen)
{
 sctp_key_t *new_key;

 new_key = sctp_alloc_key(keylen);
 if (new_key == ((void*)0)) {

  return (((void*)0));
 }
 SCTP_READ_RANDOM(new_key->key, keylen);
 new_key->keylen = keylen;
 return (new_key);
}
