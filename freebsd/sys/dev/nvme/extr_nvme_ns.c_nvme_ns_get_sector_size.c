
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {size_t flbas; size_t* lbaf; } ;
struct nvme_namespace {TYPE_1__ data; } ;


 size_t NVME_NS_DATA_FLBAS_FORMAT_MASK ;
 size_t NVME_NS_DATA_FLBAS_FORMAT_SHIFT ;
 size_t NVME_NS_DATA_LBAF_LBADS_MASK ;
 size_t NVME_NS_DATA_LBAF_LBADS_SHIFT ;

uint32_t
nvme_ns_get_sector_size(struct nvme_namespace *ns)
{
 uint8_t flbas_fmt, lbads;

 flbas_fmt = (ns->data.flbas >> NVME_NS_DATA_FLBAS_FORMAT_SHIFT) &
  NVME_NS_DATA_FLBAS_FORMAT_MASK;
 lbads = (ns->data.lbaf[flbas_fmt] >> NVME_NS_DATA_LBAF_LBADS_SHIFT) &
  NVME_NS_DATA_LBAF_LBADS_MASK;

 return (1 << lbads);
}
