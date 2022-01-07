
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_info {int num_queues; int * rxq; } ;


 int M_DEVBUF ;
 int destroy_rxq (int *) ;
 int free (int *,int ) ;

__attribute__((used)) static void
destroy_rxqs(struct netfront_info *np)
{
 int i;

 for (i = 0; i < np->num_queues; i++)
  destroy_rxq(&np->rxq[i]);

 free(np->rxq, M_DEVBUF);
 np->rxq = ((void*)0);
}
