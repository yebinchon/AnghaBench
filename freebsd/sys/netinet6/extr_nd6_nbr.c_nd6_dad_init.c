
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAILQ_INIT (int *) ;
 int V_dad_rwlock ;
 int V_dadq ;
 int rw_init (int *,char*) ;

void
nd6_dad_init(void)
{

 rw_init(&V_dad_rwlock, "nd6 DAD queue");
 TAILQ_INIT(&V_dadq);
}
