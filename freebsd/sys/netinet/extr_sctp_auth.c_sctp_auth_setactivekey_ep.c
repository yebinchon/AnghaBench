
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int default_keyid; int shared_keys; } ;
struct sctp_inpcb {TYPE_1__ sctp_ep; } ;
typedef int sctp_sharedkey_t ;


 int * sctp_find_sharedkey (int *,int ) ;

int
sctp_auth_setactivekey_ep(struct sctp_inpcb *inp, uint16_t keyid)
{
 sctp_sharedkey_t *skey;


 skey = sctp_find_sharedkey(&inp->sctp_ep.shared_keys, keyid);
 if (skey == ((void*)0)) {

  return (-1);
 }
 inp->sctp_ep.default_keyid = keyid;
 return (0);
}
