
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfjail {int * queue; int flags; } ;


 int JF_FAILED ;
 int TAILQ_INSERT_HEAD (int *,struct cfjail*,int ) ;
 int TAILQ_REMOVE (int *,struct cfjail*,int ) ;
 int ready ;
 int tq ;

void
failed(struct cfjail *j)
{
 j->flags |= JF_FAILED;
 TAILQ_REMOVE(j->queue, j, tq);
 TAILQ_INSERT_HEAD(&ready, j, tq);
 j->queue = &ready;
}
