
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int nsze; } ;
struct nvme_namespace {TYPE_1__ data; } ;



uint64_t
nvme_ns_get_num_sectors(struct nvme_namespace *ns)
{
 return (ns->data.nsze);
}
