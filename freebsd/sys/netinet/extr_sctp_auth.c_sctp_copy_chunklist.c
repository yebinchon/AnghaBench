
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sctp_auth_chklist_t ;


 int memcpy (int *,int *,int) ;
 int * sctp_alloc_chunklist () ;

sctp_auth_chklist_t *
sctp_copy_chunklist(sctp_auth_chklist_t *list)
{
 sctp_auth_chklist_t *new_list;

 if (list == ((void*)0))
  return (((void*)0));


 new_list = sctp_alloc_chunklist();
 if (new_list == ((void*)0))
  return (((void*)0));

 memcpy(new_list, list, sizeof(*new_list));

 return (new_list);
}
