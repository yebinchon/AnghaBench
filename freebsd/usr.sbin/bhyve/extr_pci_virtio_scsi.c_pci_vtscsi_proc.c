
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtscsi_worker {scalar_t__ vsw_exiting; struct pci_vtscsi_queue* vsw_queue; } ;
struct pci_vtscsi_request {int vsr_idx; int vsr_niov_out; int vsr_iov_out; int vsr_niov_in; int vsr_iov_in; } ;
struct pci_vtscsi_queue {int vsq_mtx; int vsq_qmtx; int vsq_vq; int vsq_requests; int vsq_cv; } ;


 int DPRINTF (char*) ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 struct pci_vtscsi_request* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int free (struct pci_vtscsi_request*) ;
 int pci_vtscsi_request_handle (struct pci_vtscsi_queue*,int ,int ,int ,int ) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vq_endchains (int ,int ) ;
 int vq_relchain (int ,int ,int) ;
 int vsr_link ;

__attribute__((used)) static void *
pci_vtscsi_proc(void *arg)
{
 struct pci_vtscsi_worker *worker = (struct pci_vtscsi_worker *)arg;
 struct pci_vtscsi_queue *q = worker->vsw_queue;
 struct pci_vtscsi_request *req;
 int iolen;

 for (;;) {
  pthread_mutex_lock(&q->vsq_mtx);

  while (STAILQ_EMPTY(&q->vsq_requests)
      && !worker->vsw_exiting)
   pthread_cond_wait(&q->vsq_cv, &q->vsq_mtx);

  if (worker->vsw_exiting)
   break;

  req = STAILQ_FIRST(&q->vsq_requests);
  STAILQ_REMOVE_HEAD(&q->vsq_requests, vsr_link);

  pthread_mutex_unlock(&q->vsq_mtx);
  iolen = pci_vtscsi_request_handle(q, req->vsr_iov_in,
      req->vsr_niov_in, req->vsr_iov_out, req->vsr_niov_out);

  pthread_mutex_lock(&q->vsq_qmtx);
  vq_relchain(q->vsq_vq, req->vsr_idx, iolen);
  vq_endchains(q->vsq_vq, 0);
  pthread_mutex_unlock(&q->vsq_qmtx);

  DPRINTF(("virtio-scsi: request <idx=%d> completed\n",
      req->vsr_idx));
  free(req);
 }

 pthread_mutex_unlock(&q->vsq_mtx);
 return (((void*)0));
}
