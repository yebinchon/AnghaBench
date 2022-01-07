
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int provider_p ;


 int TAILQ_FIRST (int *) ;
 int providers ;

provider_p
provider_get_first(void)
{
 return (TAILQ_FIRST(&providers));
}
