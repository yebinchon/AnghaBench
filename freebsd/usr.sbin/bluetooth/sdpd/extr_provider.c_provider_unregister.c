
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* provider_p ;
struct TYPE_5__ {struct TYPE_5__* data; } ;


 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int change_state ;
 int free (TYPE_1__*) ;
 int provider_next ;
 int providers ;

void
provider_unregister(provider_p provider)
{
 TAILQ_REMOVE(&providers, provider, provider_next);
 if (provider->data != ((void*)0))
  free(provider->data);
 free(provider);
 change_state ++;
}
