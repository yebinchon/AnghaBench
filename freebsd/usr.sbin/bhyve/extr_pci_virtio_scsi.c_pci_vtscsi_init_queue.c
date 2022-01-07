
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tname ;
struct pci_vtscsi_worker {int vsw_thread; struct pci_vtscsi_queue* vsw_queue; } ;
struct pci_vtscsi_softc {int * vss_vq; } ;
struct pci_vtscsi_queue {int vsq_workers; int vsq_requests; int vsq_cv; int vsq_qmtx; int vsq_mtx; int * vsq_vq; struct pci_vtscsi_softc* vsq_sc; } ;


 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct pci_vtscsi_worker*,int ) ;
 int MAXCOMLEN ;
 int STAILQ_INIT (int *) ;
 int VTSCSI_THR_PER_Q ;
 struct pci_vtscsi_worker* calloc (int,int) ;
 int pci_vtscsi_proc ;
 int pthread_cond_init (int *,int *) ;
 int pthread_create (int *,int *,int *,void*) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_set_name_np (int ,char*) ;
 int snprintf (char*,int,char*,int,int) ;
 int vsw_link ;

__attribute__((used)) static int
pci_vtscsi_init_queue(struct pci_vtscsi_softc *sc,
    struct pci_vtscsi_queue *queue, int num)
{
 struct pci_vtscsi_worker *worker;
 char tname[MAXCOMLEN + 1];
 int i;

 queue->vsq_sc = sc;
 queue->vsq_vq = &sc->vss_vq[num + 2];

 pthread_mutex_init(&queue->vsq_mtx, ((void*)0));
 pthread_mutex_init(&queue->vsq_qmtx, ((void*)0));
 pthread_cond_init(&queue->vsq_cv, ((void*)0));
 STAILQ_INIT(&queue->vsq_requests);
 LIST_INIT(&queue->vsq_workers);

 for (i = 0; i < VTSCSI_THR_PER_Q; i++) {
  worker = calloc(1, sizeof(struct pci_vtscsi_worker));
  worker->vsw_queue = queue;

  pthread_create(&worker->vsw_thread, ((void*)0), &pci_vtscsi_proc,
      (void *)worker);

  snprintf(tname, sizeof(tname), "vtscsi:%d-%d", num, i);
  pthread_set_name_np(worker->vsw_thread, tname);
  LIST_INSERT_HEAD(&queue->vsq_workers, worker, vsw_link);
 }

 return (0);
}
