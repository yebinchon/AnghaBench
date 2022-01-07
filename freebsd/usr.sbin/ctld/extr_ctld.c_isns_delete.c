
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isns {int * i_ai; struct isns* i_addr; TYPE_1__* i_conf; } ;
struct TYPE_2__ {int conf_isns; } ;


 int TAILQ_REMOVE (int *,struct isns*,int ) ;
 int free (struct isns*) ;
 int freeaddrinfo (int *) ;
 int i_next ;

void
isns_delete(struct isns *isns)
{

 TAILQ_REMOVE(&isns->i_conf->conf_isns, isns, i_next);
 free(isns->i_addr);
 if (isns->i_ai != ((void*)0))
  freeaddrinfo(isns->i_ai);
 free(isns);
}
