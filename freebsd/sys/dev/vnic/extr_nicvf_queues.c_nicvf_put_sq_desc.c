
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int q_len; } ;
struct snd_queue {int head; TYPE_1__ dmem; int free_cnt; } ;


 int atomic_add_int (int *,int) ;

__attribute__((used)) static void
nicvf_put_sq_desc(struct snd_queue *sq, int desc_cnt)
{

 atomic_add_int(&sq->free_cnt, desc_cnt);
 sq->head += desc_cnt;
 sq->head &= (sq->dmem.q_len - 1);
}
