
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_algo; int * hmac; int max_algo; } ;
typedef TYPE_1__ sctp_hmaclist_t ;


 TYPE_1__* sctp_alloc_hmaclist (int ) ;

sctp_hmaclist_t *
sctp_copy_hmaclist(sctp_hmaclist_t *list)
{
 sctp_hmaclist_t *new_list;
 int i;

 if (list == ((void*)0))
  return (((void*)0));

 new_list = sctp_alloc_hmaclist(list->max_algo);
 if (new_list == ((void*)0))
  return (((void*)0));

 new_list->max_algo = list->max_algo;
 new_list->num_algo = list->num_algo;
 for (i = 0; i < list->num_algo; i++)
  new_list->hmac[i] = list->hmac[i];
 return (new_list);
}
