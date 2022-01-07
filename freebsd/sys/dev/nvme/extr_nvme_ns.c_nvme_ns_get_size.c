
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nvme_namespace {int dummy; } ;


 int nvme_ns_get_num_sectors (struct nvme_namespace*) ;
 int nvme_ns_get_sector_size (struct nvme_namespace*) ;

uint64_t
nvme_ns_get_size(struct nvme_namespace *ns)
{
 return (nvme_ns_get_num_sectors(ns) * nvme_ns_get_sector_size(ns));
}
