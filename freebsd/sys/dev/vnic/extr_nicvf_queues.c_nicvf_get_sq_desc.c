
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int q_len; } ;
struct snd_queue {int tail; TYPE_1__ dmem; int free_cnt; } ;


 int atomic_subtract_int (int *,int) ;

__attribute__((used)) static __inline int
nicvf_get_sq_desc(struct snd_queue *sq, int desc_cnt)
{
 int qentry;

 qentry = sq->tail;
 atomic_subtract_int(&sq->free_cnt, desc_cnt);
 sq->tail += desc_cnt;
 sq->tail &= (sq->dmem.q_len - 1);

 return (qentry);
}
