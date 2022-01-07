
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tgt_data; int enable_tgt; int enable_ini; int wwnn; int wwpn; TYPE_2__* sport; } ;
typedef TYPE_1__ ocs_vport_spec_t ;
struct TYPE_6__ {int is_vport; int sm; int ini_data; int tgt_data; } ;
typedef TYPE_2__ ocs_sport_t ;
typedef int ocs_domain_t ;
typedef int int32_t ;


 int UINT32_MAX ;
 int __ocs_sport_vport_init ;
 int ocs_assert (int ,int) ;
 int ocs_sm_transition (int *,int ,int *) ;
 TYPE_2__* ocs_sport_alloc (int *,int ,int ,int ,int ,int ) ;

int32_t
ocs_sport_vport_alloc(ocs_domain_t *domain, ocs_vport_spec_t *vport)
{
 ocs_sport_t *sport = ((void*)0);

 if (domain == ((void*)0)) {
  return (0);
 }

 ocs_assert((vport->sport == ((void*)0)), -1);


 vport->sport = sport = ocs_sport_alloc(domain, vport->wwpn, vport->wwnn, UINT32_MAX, vport->enable_ini, vport->enable_tgt);

 if (sport == ((void*)0)) {
  return -1;
 }

 sport->is_vport = 1;
 sport->tgt_data = vport->tgt_data;
 sport->ini_data = vport->tgt_data;


 ocs_sm_transition(&sport->sm, __ocs_sport_vport_init, ((void*)0));

 return (0);
}
