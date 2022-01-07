
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int keylen; } ;
typedef TYPE_1__ sctp_key_t ;



__attribute__((used)) static uint32_t
sctp_get_keylen(sctp_key_t *key)
{
 if (key != ((void*)0))
  return (key->keylen);
 else
  return (0);
}
