
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_qpair {int dummy; } ;


 int nvme_qpair_process_completions (struct nvme_qpair*) ;

__attribute__((used)) static void
nvme_qpair_msix_handler(void *arg)
{
 struct nvme_qpair *qpair = arg;

 nvme_qpair_process_completions(qpair);
}
