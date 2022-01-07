
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int key; } ;
typedef TYPE_1__ sctp_key_t ;


 int memcpy (int ,int *,int ) ;
 TYPE_1__* sctp_alloc_key (int ) ;

sctp_key_t *
sctp_set_key(uint8_t *key, uint32_t keylen)
{
 sctp_key_t *new_key;

 new_key = sctp_alloc_key(keylen);
 if (new_key == ((void*)0)) {

  return (((void*)0));
 }
 memcpy(new_key->key, key, keylen);
 return (new_key);
}
