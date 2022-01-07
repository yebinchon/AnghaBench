
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qentry {int dummy; } ;


 struct qentry* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int count ;
 int list ;
 int queue ;

__attribute__((used)) static struct qentry *
dequeue(void)
{
 struct qentry *item;

 item = STAILQ_FIRST(&queue);
 if (item == ((void*)0))
  return (((void*)0));

 STAILQ_REMOVE_HEAD(&queue, list);
 --count;
 return (item);
}
