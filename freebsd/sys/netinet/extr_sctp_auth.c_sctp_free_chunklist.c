
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sctp_auth_chklist_t ;


 int SCTP_FREE (int *,int ) ;
 int SCTP_M_AUTH_CL ;

void
sctp_free_chunklist(sctp_auth_chklist_t *list)
{
 if (list != ((void*)0))
  SCTP_FREE(list, SCTP_M_AUTH_CL);
}
