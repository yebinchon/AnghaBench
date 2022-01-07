
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_qpair {int dummy; } ;


 int nvme_admin_qpair_abort_aers (struct nvme_qpair*) ;
 int nvme_qpair_destroy (struct nvme_qpair*) ;

void
nvme_admin_qpair_destroy(struct nvme_qpair *qpair)
{

 nvme_admin_qpair_abort_aers(qpair);
 nvme_qpair_destroy(qpair);
}
