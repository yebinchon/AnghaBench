
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sctp_hmaclist_t ;


 int SCTP_FREE (int *,int ) ;
 int SCTP_M_AUTH_HL ;

void
sctp_free_hmaclist(sctp_hmaclist_t *list)
{
 if (list != ((void*)0)) {
  SCTP_FREE(list, SCTP_M_AUTH_HL);
  list = ((void*)0);
 }
}
