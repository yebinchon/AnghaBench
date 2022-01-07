
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_hdr {int tid; int attr_id; int method; int class_version; int mgmt_class; int base_version; } ;
typedef int __be64 ;
typedef int __be16 ;


 int IB_CM_CLASS_VERSION ;
 int IB_MGMT_BASE_VERSION ;
 int IB_MGMT_CLASS_CM ;
 int IB_MGMT_METHOD_SEND ;

__attribute__((used)) static void cm_format_mad_hdr(struct ib_mad_hdr *hdr,
         __be16 attr_id, __be64 tid)
{
 hdr->base_version = IB_MGMT_BASE_VERSION;
 hdr->mgmt_class = IB_MGMT_CLASS_CM;
 hdr->class_version = IB_CM_CLASS_VERSION;
 hdr->method = IB_MGMT_METHOD_SEND;
 hdr->attr_id = attr_id;
 hdr->tid = tid;
}
