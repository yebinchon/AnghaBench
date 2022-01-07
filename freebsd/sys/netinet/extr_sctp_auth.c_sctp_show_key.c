
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t keylen; int * key; } ;
typedef TYPE_1__ sctp_key_t ;


 int SCTP_PRINTF (char*,...) ;

void
sctp_show_key(sctp_key_t *key, const char *str)
{
 uint32_t i;

 if (key == ((void*)0)) {
  SCTP_PRINTF("%s: [Null key]\n", str);
  return;
 }
 SCTP_PRINTF("%s: len %u, ", str, key->keylen);
 if (key->keylen) {
  for (i = 0; i < key->keylen; i++)
   SCTP_PRINTF("%02x", key->key[i]);
  SCTP_PRINTF("\n");
 } else {
  SCTP_PRINTF("[Null key]\n");
 }
}
