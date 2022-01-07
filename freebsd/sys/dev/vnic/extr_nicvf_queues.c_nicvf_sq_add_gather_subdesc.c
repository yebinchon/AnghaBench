
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct sq_gather_subdesc {int size; int addr; int ld_type; int subdesc_type; } ;
struct TYPE_2__ {int q_len; } ;
struct snd_queue {TYPE_1__ dmem; } ;


 scalar_t__ GET_SQ_DESC (struct snd_queue*,int) ;
 int NIC_SEND_LD_TYPE_E_LDD ;
 int SND_QUEUE_DESC_SIZE ;
 int SQ_DESC_TYPE_GATHER ;
 int memset (struct sq_gather_subdesc*,int ,int ) ;

__attribute__((used)) static inline void nicvf_sq_add_gather_subdesc(struct snd_queue *sq, int qentry,
            int size, uint64_t data)
{
 struct sq_gather_subdesc *gather;

 qentry &= (sq->dmem.q_len - 1);
 gather = (struct sq_gather_subdesc *)GET_SQ_DESC(sq, qentry);

 memset(gather, 0, SND_QUEUE_DESC_SIZE);
 gather->subdesc_type = SQ_DESC_TYPE_GATHER;
 gather->ld_type = NIC_SEND_LD_TYPE_E_LDD;
 gather->size = size;
 gather->addr = data;
}
