
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qidx_t ;
typedef TYPE_1__* iflib_txq_t ;
struct TYPE_4__ {int ift_size; int ift_in_use; } ;


 int TXD_NOTIFY_COUNT (TYPE_1__*) ;

__attribute__((used)) static inline qidx_t
txq_max_rs_deferred(iflib_txq_t txq)
{
 qidx_t notify_count = TXD_NOTIFY_COUNT(txq);
 qidx_t minthresh = txq->ift_size / 8;
 if (txq->ift_in_use > 4*minthresh)
  return (notify_count);
 if (txq->ift_in_use > 2*minthresh)
  return (notify_count >> 1);
 if (txq->ift_in_use > minthresh)
  return (notify_count >> 2);
 return (2);
}
