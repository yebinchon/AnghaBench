
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int nsfeat; int npwg; } ;
struct nvme_namespace {int boundary; TYPE_1__ data; } ;


 int NVME_NS_DATA_NSFEAT_NPVALID_MASK ;
 int NVME_NS_DATA_NSFEAT_NPVALID_SHIFT ;
 int nvme_ns_get_sector_size (struct nvme_namespace*) ;

uint32_t
nvme_ns_get_stripesize(struct nvme_namespace *ns)
{

 if (((ns->data.nsfeat >> NVME_NS_DATA_NSFEAT_NPVALID_SHIFT) &
     NVME_NS_DATA_NSFEAT_NPVALID_MASK) != 0 && ns->data.npwg != 0) {
  return ((ns->data.npwg + 1) * nvme_ns_get_sector_size(ns));
 }
 return (ns->boundary);
}
