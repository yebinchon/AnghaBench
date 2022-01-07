
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_10__ {scalar_t__ keylen; int * key; } ;
typedef TYPE_1__ sctp_key_t ;


 int memcpy (int *,int *,scalar_t__) ;
 TYPE_1__* sctp_alloc_key (scalar_t__) ;
 scalar_t__ sctp_compare_key (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ sctp_get_keylen (TYPE_1__*) ;

sctp_key_t *
sctp_compute_hashkey(sctp_key_t *key1, sctp_key_t *key2, sctp_key_t *shared)
{
 uint32_t keylen;
 sctp_key_t *new_key;
 uint8_t *key_ptr;

 keylen = sctp_get_keylen(key1) + sctp_get_keylen(key2) +
     sctp_get_keylen(shared);

 if (keylen > 0) {

  new_key = sctp_alloc_key(keylen);
  if (new_key == ((void*)0)) {

   return (((void*)0));
  }
  new_key->keylen = keylen;
  key_ptr = new_key->key;
 } else {

  return (((void*)0));
 }


 if (sctp_compare_key(key1, key2) <= 0) {

  if (sctp_get_keylen(shared)) {
   memcpy(key_ptr, shared->key, shared->keylen);
   key_ptr += shared->keylen;
  }
  if (sctp_get_keylen(key1)) {
   memcpy(key_ptr, key1->key, key1->keylen);
   key_ptr += key1->keylen;
  }
  if (sctp_get_keylen(key2)) {
   memcpy(key_ptr, key2->key, key2->keylen);
  }
 } else {

  if (sctp_get_keylen(shared)) {
   memcpy(key_ptr, shared->key, shared->keylen);
   key_ptr += shared->keylen;
  }
  if (sctp_get_keylen(key2)) {
   memcpy(key_ptr, key2->key, key2->keylen);
   key_ptr += key2->keylen;
  }
  if (sctp_get_keylen(key1)) {
   memcpy(key_ptr, key1->key, key1->keylen);
  }
 }
 return (new_key);
}
