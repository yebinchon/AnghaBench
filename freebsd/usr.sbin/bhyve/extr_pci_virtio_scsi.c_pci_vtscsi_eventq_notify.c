
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vqueue_info {int dummy; } ;


 int vq_kick_disable (struct vqueue_info*) ;

__attribute__((used)) static void
pci_vtscsi_eventq_notify(void *vsc, struct vqueue_info *vq)
{

 vq_kick_disable(vq);
}
