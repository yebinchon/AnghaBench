
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_completion {int dummy; } ;
struct bio {struct bio* bio_parent; } ;


 int EIO ;
 int g_destroy_bio (struct bio*) ;
 int nvme_bio_child_inbed (struct bio*,int) ;
 scalar_t__ nvme_completion_is_error (struct nvme_completion const*) ;

__attribute__((used)) static void
nvme_bio_child_done(void *arg, const struct nvme_completion *cpl)
{
 struct bio *child = arg;
 struct bio *parent;
 int bio_error;

 parent = child->bio_parent;
 g_destroy_bio(child);
 bio_error = nvme_completion_is_error(cpl) ? EIO : 0;
 nvme_bio_child_inbed(parent, bio_error);
}
