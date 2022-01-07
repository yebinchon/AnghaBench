
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct vqueue_info {int vq_last_avail; } ;



void
vq_retchains(struct vqueue_info *vq, uint16_t n_chains)
{

 vq->vq_last_avail -= n_chains;
}
