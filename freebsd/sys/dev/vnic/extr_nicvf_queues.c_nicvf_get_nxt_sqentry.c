
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int q_len; } ;
struct snd_queue {TYPE_1__ dmem; } ;



__attribute__((used)) static __inline int
nicvf_get_nxt_sqentry(struct snd_queue *sq, int qentry)
{
 qentry++;
 qentry &= (sq->dmem.q_len - 1);
 return (qentry);
}
