
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_record {int dummy; } ;
struct mca_internal {struct mca_record rec; } ;
typedef enum scan_mode { ____Placeholder_scan_mode } scan_mode ;


 int M_MCA ;
 int M_WAITOK ;
 int POLLED ;
 struct mca_internal* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct mca_internal*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int link ;
 struct mca_internal* malloc (int,int ,int ) ;
 int mca_freecount ;
 int mca_freelist ;
 int mca_lock ;
 int mca_log (struct mca_record const*) ;
 int mca_pending ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int printf (char*) ;

__attribute__((used)) static void
mca_record_entry(enum scan_mode mode, const struct mca_record *record)
{
 struct mca_internal *rec;

 if (mode == POLLED) {
  rec = malloc(sizeof(*rec), M_MCA, M_WAITOK);
  mtx_lock_spin(&mca_lock);
 } else {
  mtx_lock_spin(&mca_lock);
  rec = STAILQ_FIRST(&mca_freelist);
  if (rec == ((void*)0)) {
   printf("MCA: Unable to allocate space for an event.\n");
   mca_log(record);
   mtx_unlock_spin(&mca_lock);
   return;
  }
  STAILQ_REMOVE_HEAD(&mca_freelist, link);
  mca_freecount--;
 }

 rec->rec = *record;
 STAILQ_INSERT_TAIL(&mca_pending, rec, link);
 mtx_unlock_spin(&mca_lock);
}
