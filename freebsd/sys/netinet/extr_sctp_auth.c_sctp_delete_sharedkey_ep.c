
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ default_keyid; int shared_keys; } ;
struct sctp_inpcb {TYPE_1__ sctp_ep; } ;
typedef int sctp_sharedkey_t ;


 int LIST_REMOVE (int *,int ) ;
 int next ;
 int sctp_clear_cachedkeys_ep (struct sctp_inpcb*,scalar_t__) ;
 int * sctp_find_sharedkey (int *,scalar_t__) ;
 int sctp_free_sharedkey (int *) ;

int
sctp_delete_sharedkey_ep(struct sctp_inpcb *inp, uint16_t keyid)
{
 sctp_sharedkey_t *skey;

 if (inp == ((void*)0))
  return (-1);


 if (keyid == inp->sctp_ep.default_keyid)
  return (-1);


 skey = sctp_find_sharedkey(&inp->sctp_ep.shared_keys, keyid);
 if (skey == ((void*)0))
  return (-1);




 LIST_REMOVE(skey, next);
 sctp_free_sharedkey(skey);


 sctp_clear_cachedkeys_ep(inp, keyid);
 return (0);
}
