
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sctp_key_t ;


 int SCTP_FREE (int *,int ) ;
 int SCTP_M_AUTH_KY ;

void
sctp_free_key(sctp_key_t *key)
{
 if (key != ((void*)0))
  SCTP_FREE(key, SCTP_M_AUTH_KY);
}
