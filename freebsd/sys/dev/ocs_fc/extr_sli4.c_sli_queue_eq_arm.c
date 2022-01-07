
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int os; } ;
typedef TYPE_1__ sli4_t ;
struct TYPE_6__ {int lock; scalar_t__ n_posted; int doorbell_offset; int doorbell_rset; int id; } ;
typedef TYPE_2__ sli4_queue_t ;
typedef int int32_t ;


 int ocs_lock (int *) ;
 int ocs_reg_write32 (int ,int ,int ,int ) ;
 int ocs_unlock (int *) ;
 int sli_eq_doorbell (scalar_t__,int ,int ) ;

int32_t
sli_queue_eq_arm(sli4_t *sli4, sli4_queue_t *q, uint8_t arm)
{
 uint32_t val = 0;

 ocs_lock(&q->lock);
  val = sli_eq_doorbell(q->n_posted, q->id, arm);
  ocs_reg_write32(sli4->os, q->doorbell_rset, q->doorbell_offset, val);
  q->n_posted = 0;
 ocs_unlock(&q->lock);

 return 0;
}
