
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EV_CANCEL ;
 int KASSERT (int,char*) ;
 int g_conf_specific (void*,int *,int *,int *,int *) ;
 int g_topology_assert () ;

void
g_confxml(void *p, int flag)
{

 KASSERT(flag != EV_CANCEL, ("g_confxml was cancelled"));
 g_topology_assert();
 g_conf_specific(p, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
