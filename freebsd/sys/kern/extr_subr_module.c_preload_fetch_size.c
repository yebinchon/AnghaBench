
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;


 int MODINFO_SIZE ;
 scalar_t__ preload_search_info (int ,int ) ;

size_t
preload_fetch_size(caddr_t mod)
{
 size_t *mdp;

 mdp = (size_t *)preload_search_info(mod, MODINFO_SIZE);
 if (mdp == ((void*)0))
  return (0);
 return (*mdp);
}
