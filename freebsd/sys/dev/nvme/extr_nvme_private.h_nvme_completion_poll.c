
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_completion_poll_status {int done; } ;


 int atomic_load_acq_int (int *) ;
 int hz ;
 int panic (char*) ;
 int pause (char*,int) ;

__attribute__((used)) static __inline
void
nvme_completion_poll(struct nvme_completion_poll_status *status)
{
 int sanity = hz * 1;

 while (!atomic_load_acq_int(&status->done) && --sanity > 0)
  pause("nvme", 1);
 if (sanity <= 0)
  panic("NVME polled command failed to complete within 1s.");
}
