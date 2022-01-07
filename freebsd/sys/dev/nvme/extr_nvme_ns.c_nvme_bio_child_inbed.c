
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_completion {int status; } ;
struct bio {int bio_flags; int bio_error; int bio_inbed; int bio_children; } ;
typedef int parent_cpl ;


 int BIO_ERROR ;
 int NVME_SC_DATA_TRANSFER_ERROR ;
 int NVME_STATUS_SC_MASK ;
 int NVME_STATUS_SC_SHIFT ;
 int atomic_fetchadd_int (int *,int) ;
 int atomic_load_acq_int (int *) ;
 int bzero (struct nvme_completion*,int) ;
 int nvme_ns_bio_done (struct bio*,struct nvme_completion*) ;

__attribute__((used)) static void
nvme_bio_child_inbed(struct bio *parent, int bio_error)
{
 struct nvme_completion parent_cpl;
 int children, inbed;

 if (bio_error != 0) {
  parent->bio_flags |= BIO_ERROR;
  parent->bio_error = bio_error;
 }







 children = atomic_load_acq_int(&parent->bio_children);
 inbed = atomic_fetchadd_int(&parent->bio_inbed, 1) + 1;
 if (inbed == children) {
  bzero(&parent_cpl, sizeof(parent_cpl));
  if (parent->bio_flags & BIO_ERROR) {
   parent_cpl.status &= ~(NVME_STATUS_SC_MASK << NVME_STATUS_SC_SHIFT);
   parent_cpl.status |= (NVME_SC_DATA_TRANSFER_ERROR) << NVME_STATUS_SC_SHIFT;
  }
  nvme_ns_bio_done(parent, &parent_cpl);
 }
}
