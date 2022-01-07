
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAILQ_EMPTY (int *) ;
 int V_nd6_defrouter ;

bool
nd6_defrouter_list_empty(void)
{

 return (TAILQ_EMPTY(&V_nd6_defrouter));
}
