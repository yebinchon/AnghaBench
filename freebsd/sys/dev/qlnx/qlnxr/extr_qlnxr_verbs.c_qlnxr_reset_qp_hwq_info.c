
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
struct qlnxr_qp_hwq_info {TYPE_2__ db_data; scalar_t__ wqe_cons; scalar_t__ cons; scalar_t__ prod; int pbl; } ;


 int cpu_to_le16 (int ) ;
 int ecore_chain_reset (int *) ;

__attribute__((used)) static void
qlnxr_reset_qp_hwq_info(struct qlnxr_qp_hwq_info *qph)
{
 ecore_chain_reset(&qph->pbl);
 qph->prod = qph->cons = 0;
 qph->wqe_cons = 0;
 qph->db_data.data.value = cpu_to_le16(0);

 return;
}
