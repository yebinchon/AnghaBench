
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num_chunks; } ;
typedef TYPE_1__ sctp_auth_chklist_t ;



size_t
sctp_auth_get_chklist_size(const sctp_auth_chklist_t *list)
{
 if (list == ((void*)0))
  return (0);
 else
  return (list->num_chunks);
}
