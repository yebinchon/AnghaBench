
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int num_algo; int * hmac; } ;
typedef TYPE_1__ sctp_hmaclist_t ;
typedef int hmac_id ;


 int htons (int ) ;
 int memcpy (int *,int *,int) ;

int
sctp_serialize_hmaclist(sctp_hmaclist_t *list, uint8_t *ptr)
{
 int i;
 uint16_t hmac_id;

 if (list == ((void*)0))
  return (0);

 for (i = 0; i < list->num_algo; i++) {
  hmac_id = htons(list->hmac[i]);
  memcpy(ptr, &hmac_id, sizeof(hmac_id));
  ptr += sizeof(hmac_id);
 }
 return (list->num_algo * sizeof(hmac_id));
}
