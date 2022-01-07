
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ sli4_queue_t ;


 int ocs_unlock (int *) ;

__attribute__((used)) static inline void
sli_queue_unlock(sli4_queue_t *q)
{
 ocs_unlock(&q->lock);
}
