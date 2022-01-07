
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ sli4_queue_t ;


 int ocs_lock (int *) ;

__attribute__((used)) static inline void
sli_queue_lock(sli4_queue_t *q)
{
 ocs_lock(&q->lock);
}
