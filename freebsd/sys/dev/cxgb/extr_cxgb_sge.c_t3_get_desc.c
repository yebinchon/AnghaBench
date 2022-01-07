
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tx_desc {int dummy; } ;
struct TYPE_5__ {unsigned int size; int * desc; } ;
struct sge_qset {TYPE_3__* fl; TYPE_2__ rspq; TYPE_1__* txq; } ;
struct rx_desc {int dummy; } ;
struct rsp_desc {int dummy; } ;
struct TYPE_6__ {unsigned int size; int * desc; } ;
struct TYPE_4__ {unsigned int size; int * desc; } ;


 int EINVAL ;
 int memcpy (unsigned char*,int *,int) ;

int
t3_get_desc(const struct sge_qset *qs, unsigned int qnum, unsigned int idx,
  unsigned char *data)
{
 if (qnum >= 6)
  return (EINVAL);

 if (qnum < 3) {
  if (!qs->txq[qnum].desc || idx >= qs->txq[qnum].size)
   return -EINVAL;
  memcpy(data, &qs->txq[qnum].desc[idx], sizeof(struct tx_desc));
  return sizeof(struct tx_desc);
 }

 if (qnum == 3) {
  if (!qs->rspq.desc || idx >= qs->rspq.size)
   return (EINVAL);
  memcpy(data, &qs->rspq.desc[idx], sizeof(struct rsp_desc));
  return sizeof(struct rsp_desc);
 }

 qnum -= 4;
 if (!qs->fl[qnum].desc || idx >= qs->fl[qnum].size)
  return (EINVAL);
 memcpy(data, &qs->fl[qnum].desc[idx], sizeof(struct rx_desc));
 return sizeof(struct rx_desc);
}
