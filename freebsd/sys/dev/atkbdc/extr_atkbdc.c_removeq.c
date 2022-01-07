
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t tail; size_t head; int* q; int qcount; } ;
typedef TYPE_1__ kqueue ;


 size_t nextq (size_t) ;

__attribute__((used)) static int
removeq(kqueue *q)
{
    int c;

    if (q->tail != q->head) {
 c = q->q[q->head];
 q->head = nextq(q->head);



 return c;
    }
    return -1;
}
