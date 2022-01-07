
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_hdr {scalar_t__ mgmt_class; int method; } ;


 scalar_t__ IB_MGMT_CLASS_SUBN_ADM ;
 scalar_t__ IB_MGMT_CLASS_VENDOR_RANGE2_END ;
 scalar_t__ IB_MGMT_CLASS_VENDOR_RANGE2_START ;




__attribute__((used)) static int is_rmpp_mad(struct ib_mad_hdr *mad_hdr)
{
 if (mad_hdr->mgmt_class == IB_MGMT_CLASS_SUBN_ADM) {
  switch (mad_hdr->method) {
  case 129:
  case 128:
  case 130:
   return 1;
  default:
   break;
  }
 } else if ((mad_hdr->mgmt_class >= IB_MGMT_CLASS_VENDOR_RANGE2_START) &&
     (mad_hdr->mgmt_class <= IB_MGMT_CLASS_VENDOR_RANGE2_END))
  return 1;

 return 0;
}
