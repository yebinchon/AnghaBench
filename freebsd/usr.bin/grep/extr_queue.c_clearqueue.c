
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct qentry* dat; } ;
struct qentry {TYPE_1__ data; } ;


 struct qentry* dequeue () ;
 int free (struct qentry*) ;

void
clearqueue(void)
{
 struct qentry *item;

 while ((item = dequeue()) != ((void*)0)) {
  free(item->data.dat);
  free(item);
 }
}
