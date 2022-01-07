
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct qentry* dat; } ;
struct qentry {TYPE_1__ data; } ;


 struct qentry* dequeue () ;
 int free (struct qentry*) ;
 int grep_printline (TYPE_1__*,char) ;

void
printqueue(void)
{
 struct qentry *item;

 while ((item = dequeue()) != ((void*)0)) {
  grep_printline(&item->data, '-');
  free(item->data.dat);
  free(item);
 }
}
