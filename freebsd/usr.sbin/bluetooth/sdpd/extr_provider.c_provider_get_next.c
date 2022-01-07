
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int provider_p ;


 int TAILQ_NEXT (int ,int ) ;
 int provider_next ;

provider_p
provider_get_next(provider_p provider)
{
 return (TAILQ_NEXT(provider, provider_next));
}
