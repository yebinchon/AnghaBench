
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int num_algo; scalar_t__* hmac; } ;
typedef TYPE_1__ sctp_hmaclist_t ;


 scalar_t__ SCTP_AUTH_HMAC_ID_RSVD ;

int
sctp_auth_is_supported_hmac(sctp_hmaclist_t *list, uint16_t id)
{
 int i;

 if ((list == ((void*)0)) || (id == SCTP_AUTH_HMAC_ID_RSVD))
  return (0);

 for (i = 0; i < list->num_algo; i++)
  if (list->hmac[i] == id)
   return (1);


 return (0);
}
