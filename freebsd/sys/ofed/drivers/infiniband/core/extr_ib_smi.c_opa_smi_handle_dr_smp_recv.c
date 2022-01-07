
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dr_dlid; scalar_t__ dr_slid; int return_path; int initial_path; } ;
struct TYPE_4__ {TYPE_1__ dr; } ;
struct opa_smp {TYPE_2__ route; int hop_cnt; int hop_ptr; } ;
typedef enum smi_action { ____Placeholder_smi_action } smi_action ;


 scalar_t__ OPA_LID_PERMISSIVE ;
 int __smi_handle_dr_smp_recv (int,int,int,int *,int ,int ,int ,int ,int,int) ;
 int opa_get_smp_direction (struct opa_smp*) ;

enum smi_action opa_smi_handle_dr_smp_recv(struct opa_smp *smp, bool is_switch,
        int port_num, int phys_port_cnt)
{
 return __smi_handle_dr_smp_recv(is_switch, port_num, phys_port_cnt,
     &smp->hop_ptr, smp->hop_cnt,
     smp->route.dr.initial_path,
     smp->route.dr.return_path,
     opa_get_smp_direction(smp),
     smp->route.dr.dr_dlid ==
     OPA_LID_PERMISSIVE,
     smp->route.dr.dr_slid ==
     OPA_LID_PERMISSIVE);
}
