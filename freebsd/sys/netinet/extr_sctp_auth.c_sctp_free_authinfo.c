
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * recv_key; int * assoc_key; int * peer_random; int * random; } ;
typedef TYPE_1__ sctp_authinfo_t ;


 int sctp_free_key (int *) ;

void
sctp_free_authinfo(sctp_authinfo_t *authinfo)
{
 if (authinfo == ((void*)0))
  return;

 if (authinfo->random != ((void*)0))
  sctp_free_key(authinfo->random);
 if (authinfo->peer_random != ((void*)0))
  sctp_free_key(authinfo->peer_random);
 if (authinfo->assoc_key != ((void*)0))
  sctp_free_key(authinfo->assoc_key);
 if (authinfo->recv_key != ((void*)0))
  sctp_free_key(authinfo->recv_key);



}
