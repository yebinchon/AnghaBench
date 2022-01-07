
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_completion_poll_status {int done; int cpl; } ;
struct nvme_completion {int dummy; } ;


 int atomic_store_rel_int (int *,int) ;
 int memcpy (int *,struct nvme_completion const*,int) ;

void
nvme_completion_poll_cb(void *arg, const struct nvme_completion *cpl)
{
 struct nvme_completion_poll_status *status = arg;






 memcpy(&status->cpl, cpl, sizeof(*cpl));
 atomic_store_rel_int(&status->done, 1);
}
