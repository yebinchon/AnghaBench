
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qlnxr_iw_ep {int * qp; int ecore_context; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int rdma_ctx; } ;
struct iw_cm_id {scalar_t__ provider_data; } ;
struct ecore_iwarp_reject_in {int private_data_len; void const* private_data; struct qlnxr_iw_ep* cb_context; int ep_context; } ;


 int EINVAL ;
 int ecore_iwarp_reject (int ,struct ecore_iwarp_reject_in*) ;
 int printf (char*) ;

int
qlnxr_iw_reject(struct iw_cm_id *cm_id, const void *pdata, u8 pdata_len)
{
 printf("iWARP reject_cr not implemented\n");
 return -EINVAL;


}
