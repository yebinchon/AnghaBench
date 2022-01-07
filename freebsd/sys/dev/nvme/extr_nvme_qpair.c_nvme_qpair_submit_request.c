
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_request {int dummy; } ;
struct nvme_qpair {int lock; } ;


 int _nvme_qpair_submit_request (struct nvme_qpair*,struct nvme_request*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
nvme_qpair_submit_request(struct nvme_qpair *qpair, struct nvme_request *req)
{

 mtx_lock(&qpair->lock);
 _nvme_qpair_submit_request(qpair, req);
 mtx_unlock(&qpair->lock);
}
