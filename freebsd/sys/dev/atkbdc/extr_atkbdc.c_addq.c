
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t tail; size_t head; int* q; scalar_t__ qcount; scalar_t__ max_qcount; int call_count; } ;
typedef TYPE_1__ kqueue ;


 int FALSE ;
 int TRUE ;
 size_t nextq (size_t) ;

__attribute__((used)) static int
addq(kqueue *q, int c)
{
    if (nextq(q->tail) != q->head) {
 q->q[q->tail] = c;
 q->tail = nextq(q->tail);






 return TRUE;
    }
    return FALSE;
}
