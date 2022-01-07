
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sctp_auth_chklist_t ;


 int memset (int *,int ,int) ;

void
sctp_clear_chunklist(sctp_auth_chklist_t *chklist)
{
 memset(chklist, 0, sizeof(*chklist));

}
