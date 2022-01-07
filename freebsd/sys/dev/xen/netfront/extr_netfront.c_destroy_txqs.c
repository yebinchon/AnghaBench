
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_info {int num_queues; int * txq; } ;


 int M_DEVBUF ;
 int destroy_txq (int *) ;
 int free (int *,int ) ;

__attribute__((used)) static void
destroy_txqs(struct netfront_info *np)
{
 int i;

 for (i = 0; i < np->num_queues; i++)
  destroy_txq(&np->txq[i]);

 free(np->txq, M_DEVBUF);
 np->txq = ((void*)0);
}
