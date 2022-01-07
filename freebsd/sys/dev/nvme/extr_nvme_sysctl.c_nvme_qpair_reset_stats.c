
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_qpair {scalar_t__ num_failures; scalar_t__ num_retries; scalar_t__ num_intr_handler_calls; scalar_t__ num_cmds; } ;



__attribute__((used)) static void
nvme_qpair_reset_stats(struct nvme_qpair *qpair)
{

 qpair->num_cmds = 0;
 qpair->num_intr_handler_calls = 0;
 qpair->num_retries = 0;
 qpair->num_failures = 0;
}
