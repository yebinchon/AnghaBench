
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAILQ_INIT (int *) ;
 int V_nd6_defrouter ;

void
nd6_defrouter_init(void)
{

 TAILQ_INIT(&V_nd6_defrouter);
}
