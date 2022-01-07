
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_request_hdr {int dummy; } ;


 int LEN__ABORT_REQ_ULP ;
 int LEN__ABORT_RPL_ULP ;
 int LEN__SET_TCB_FIELD_ULP ;
 int roundup2 (int ,int) ;

__attribute__((used)) static inline int
del_hashfilter_wrlen(void)
{

 return (sizeof(struct work_request_hdr) +
     roundup2(LEN__SET_TCB_FIELD_ULP, 16) +
     roundup2(LEN__ABORT_REQ_ULP, 16) +
     roundup2(LEN__ABORT_RPL_ULP, 16));
}
