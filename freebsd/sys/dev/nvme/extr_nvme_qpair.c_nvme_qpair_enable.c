
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_qpair {int is_enabled; } ;


 int TRUE ;

__attribute__((used)) static void
nvme_qpair_enable(struct nvme_qpair *qpair)
{

 qpair->is_enabled = TRUE;
}
