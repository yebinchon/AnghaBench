
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int sli4_t ;
struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ sli4_queue_t ;
typedef int int32_t ;


 int _sli_queue_poke (int *,TYPE_1__*,int ,int *) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

int32_t
sli_queue_poke(sli4_t *sli4, sli4_queue_t *q, uint32_t index, uint8_t *entry)
{
 int32_t rc;

 ocs_lock(&q->lock);
  rc = _sli_queue_poke(sli4, q, index, entry);
 ocs_unlock(&q->lock);

 return rc;
}
