
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sli4_t ;
struct TYPE_3__ {int index; } ;
typedef TYPE_1__ sli4_queue_t ;
typedef int int32_t ;



int32_t
sli_queue_index(sli4_t *sli4, sli4_queue_t *q)
{

 if (q) {
  return q->index;
 } else {
  return -1;
 }
}
