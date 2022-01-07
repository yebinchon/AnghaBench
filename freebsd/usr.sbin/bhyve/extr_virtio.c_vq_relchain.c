
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct vqueue_info {int dummy; } ;


 int vq_relchain_prepare (struct vqueue_info*,int ,int ) ;
 int vq_relchain_publish (struct vqueue_info*) ;

void
vq_relchain(struct vqueue_info *vq, uint16_t idx, uint32_t iolen)
{
 vq_relchain_prepare(vq, idx, iolen);
 vq_relchain_publish(vq);
}
