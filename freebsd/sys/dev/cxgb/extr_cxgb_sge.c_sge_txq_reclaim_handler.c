
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_qset {int dummy; } ;


 int reclaim_completed_tx (struct sge_qset*,int,int) ;

__attribute__((used)) static void
sge_txq_reclaim_handler(void *arg, int ncount)
{
 struct sge_qset *qs = arg;
 int i;

 for (i = 0; i < 3; i++)
  reclaim_completed_tx(qs, 16, i);
}
