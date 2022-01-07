
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef void* uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_19__ {TYPE_2__* app; } ;
struct TYPE_20__ {int enable_rscn; int display_name; int * mgmt_functions; int node_group_dir_list; scalar_t__ instance_index; int node_group_lock; TYPE_4__* ocs; int wwnn_str; scalar_t__ wwnn; scalar_t__ wwpn; int fc_id; int service_params; void* enable_tgt; void* enable_ini; TYPE_1__ sm; int node_list; int lookup; TYPE_3__* domain; } ;
typedef TYPE_2__ ocs_sport_t ;
struct TYPE_21__ {TYPE_4__* ocs; int sport_list; TYPE_2__* sport; int service_params; int sport_instance_count; } ;
typedef TYPE_3__ ocs_domain_t ;
typedef int fc_plogi_payload_t ;
struct TYPE_22__ {int ctrlmask; } ;


 int OCS_CTRLMASK_INHIBIT_INITIATOR ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 scalar_t__ enable_target_rscn (TYPE_4__*) ;
 int link ;
 int ocs_domain_lock (TYPE_3__*) ;
 int ocs_domain_unlock (TYPE_3__*) ;
 int ocs_list_add_tail (int *,TYPE_2__*) ;
 scalar_t__ ocs_list_empty (int *) ;
 int ocs_list_init (int *,int ,int ) ;
 int ocs_lock_init (TYPE_4__*,int *,char*,scalar_t__) ;
 int ocs_log_debug (TYPE_4__*,char*,int ) ;
 int ocs_log_test (TYPE_4__*,char*,unsigned long long,unsigned long long) ;
 TYPE_2__* ocs_malloc (TYPE_4__*,int,int) ;
 int ocs_memcpy (int ,int ,int) ;
 int ocs_node_group_dir_t ;
 int ocs_node_t ;
 int ocs_snprintf (int ,int,char*,...) ;
 TYPE_2__* ocs_sport_find_wwn (TYPE_3__*,scalar_t__,scalar_t__) ;
 int ocs_sport_lock_init (TYPE_2__*) ;
 int sport_mgmt_functions ;
 int spv_new (TYPE_4__*) ;

ocs_sport_t *
ocs_sport_alloc(ocs_domain_t *domain, uint64_t wwpn, uint64_t wwnn, uint32_t fc_id, uint8_t enable_ini, uint8_t enable_tgt)
{
 ocs_sport_t *sport;

 if (domain->ocs->ctrlmask & OCS_CTRLMASK_INHIBIT_INITIATOR) {
  enable_ini = 0;
 }


 if (wwpn != 0) {
  sport = ocs_sport_find_wwn(domain, wwnn, wwpn);
  if (sport != ((void*)0)) {
   ocs_log_test(domain->ocs, "Failed: SPORT %016llx  %016llx already allocated\n",
         (unsigned long long)wwnn, (unsigned long long)wwpn);
   return ((void*)0);
  }
 }

 sport = ocs_malloc(domain->ocs, sizeof(*sport), OCS_M_NOWAIT | OCS_M_ZERO);
 if (sport) {
  sport->ocs = domain->ocs;
  ocs_snprintf(sport->display_name, sizeof(sport->display_name), "------");
  sport->domain = domain;
  sport->lookup = spv_new(domain->ocs);
  sport->instance_index = domain->sport_instance_count++;
  ocs_sport_lock_init(sport);
  ocs_list_init(&sport->node_list, ocs_node_t, link);
  sport->sm.app = sport;
  sport->enable_ini = enable_ini;
  sport->enable_tgt = enable_tgt;
  sport->enable_rscn = (sport->enable_ini || (sport->enable_tgt && enable_target_rscn(sport->ocs)));


  ocs_memcpy(sport->service_params, domain->service_params, sizeof(fc_plogi_payload_t));


  sport->fc_id = fc_id;


  sport->wwpn = wwpn;
  sport->wwnn = wwnn;
  ocs_snprintf(sport->wwnn_str, sizeof(sport->wwnn_str), "%016llx" , (unsigned long long)wwnn);


  ocs_lock_init(sport->ocs, &sport->node_group_lock, "node_group_lock[%d]", sport->instance_index);
  ocs_list_init(&sport->node_group_dir_list, ocs_node_group_dir_t, link);


  ocs_domain_lock(domain);
   if (ocs_list_empty(&domain->sport_list)) {
    domain->sport = sport;
   }

   ocs_list_add_tail(&domain->sport_list, sport);
  ocs_domain_unlock(domain);

  sport->mgmt_functions = &sport_mgmt_functions;

  ocs_log_debug(domain->ocs, "[%s] allocate sport\n", sport->display_name);
 }
 return sport;
}
