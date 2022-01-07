
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_internal {int dummy; } ;


 struct mca_internal* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct mca_internal*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int link ;
 scalar_t__ mca_count ;
 int mca_freecount ;
 int mca_freelist ;
 scalar_t__ mca_maxcount ;
 int mca_records ;

__attribute__((used)) static void
mca_store_record(struct mca_internal *mca)
{
 if (mca_maxcount != 0)
  STAILQ_INSERT_TAIL(&mca_records, mca, link);
 if (mca_maxcount < 0 || mca_count < mca_maxcount)
  mca_count++;
 else {
  if (mca_maxcount != 0) {
   mca = STAILQ_FIRST(&mca_records);
   STAILQ_REMOVE_HEAD(&mca_records, link);
  }
  STAILQ_INSERT_TAIL(&mca_freelist, mca, link);
  mca_freecount++;
 }
}
