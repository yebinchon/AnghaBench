
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_internal {int rec; } ;
typedef enum scan_mode { ____Placeholder_scan_mode } scan_mode ;


 int POLLED ;
 struct mca_internal* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int cold ;
 int link ;
 int mca_lock ;
 int mca_log (int *) ;
 int mca_pending ;
 int mca_resize_freelist () ;
 int mca_resize_task ;
 int mca_store_record (struct mca_internal*) ;
 int mca_tq ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
mca_process_records(enum scan_mode mode)
{
 struct mca_internal *mca;

 mtx_lock_spin(&mca_lock);
 while ((mca = STAILQ_FIRST(&mca_pending)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&mca_pending, link);
  mca_log(&mca->rec);
  mca_store_record(mca);
 }
 mtx_unlock_spin(&mca_lock);
 if (mode == POLLED)
  mca_resize_freelist();
 else if (!cold)
  taskqueue_enqueue(mca_tq, &mca_resize_task);
}
