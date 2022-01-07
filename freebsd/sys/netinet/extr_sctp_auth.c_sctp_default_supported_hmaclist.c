
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sctp_hmaclist_t ;


 int SCTP_AUTH_HMAC_ID_SHA1 ;
 int SCTP_AUTH_HMAC_ID_SHA256 ;
 int * sctp_alloc_hmaclist (int) ;
 int sctp_auth_add_hmacid (int *,int ) ;

sctp_hmaclist_t *
sctp_default_supported_hmaclist(void)
{
 sctp_hmaclist_t *new_list;

 new_list = sctp_alloc_hmaclist(2);
 if (new_list == ((void*)0))
  return (((void*)0));

 (void)sctp_auth_add_hmacid(new_list, SCTP_AUTH_HMAC_ID_SHA256);
 (void)sctp_auth_add_hmacid(new_list, SCTP_AUTH_HMAC_ID_SHA1);
 return (new_list);
}
