
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {unsigned long long chaining_capable; unsigned long long frag_num_field_offset; unsigned long long sgl_index_field_offset; unsigned long long chain_sge_initial_value_lo; unsigned long long chain_sge_initial_value_hi; scalar_t__ sgl_index_field_mask; scalar_t__ frag_num_field_mask; } ;
struct TYPE_7__ {unsigned long long e_d_tov; unsigned long long r_a_tov; unsigned long long link_module_type; unsigned long long rq_batch; unsigned long long topology; unsigned long long* fw_rev; unsigned long long* hw_rev; unsigned long long sge_supported_length; unsigned long long sgl_page_sizes; unsigned long long max_sgl_pages; unsigned long long high_login_mode; unsigned long long sgl_pre_registered; unsigned long long sgl_pre_registration_required; scalar_t__* fw_name; int * wwnn; int * wwpn; TYPE_3__ sgl_chaining_params; } ;
struct TYPE_8__ {unsigned long long sli_rev; unsigned long long sli_family; unsigned long long if_type; int asic_type; int asic_rev; TYPE_1__ config; } ;
typedef TYPE_2__ sli4_t ;
typedef TYPE_3__ sli4_sgl_chaining_params_t ;
typedef int ocs_textbuf_t ;
 int SLI_QTYPE_CQ ;
 int SLI_QTYPE_EQ ;
 int SLI_QTYPE_MQ ;
 int SLI_QTYPE_RQ ;
 int SLI_QTYPE_WQ ;
 int SLI_RSRC_FCOE_FCFI ;
 int SLI_RSRC_FCOE_RPI ;
 int SLI_RSRC_FCOE_VFI ;
 int SLI_RSRC_FCOE_VPI ;
 int SLI_RSRC_FCOE_XRI ;
 int ocs_ddump_endsection (int *,char*,int ) ;
 int ocs_ddump_section (int *,char*,int ) ;
 int ocs_ddump_sli_q_fields (int *,TYPE_2__*,int ) ;
 int ocs_ddump_value (int *,char*,char*,...) ;
 unsigned long long sli_get_max_rsrc (TYPE_2__*,int ) ;

__attribute__((used)) static void
ocs_ddump_sli(ocs_textbuf_t *textbuf, sli4_t *sli4)
{
 sli4_sgl_chaining_params_t *cparams = &sli4->config.sgl_chaining_params;
 const char *p;

 ocs_ddump_section(textbuf, "sli4", 0);

 ocs_ddump_value(textbuf, "sli_rev", "%d", sli4->sli_rev);
 ocs_ddump_value(textbuf, "sli_family", "%d", sli4->sli_family);
 ocs_ddump_value(textbuf, "if_type", "%d", sli4->if_type);

 switch(sli4->asic_type) {
 case 131: p = "BE3"; break;
 case 128: p = "Skyhawk"; break;
 case 130: p = "Lancer"; break;
 case 129: p = "LancerG6"; break;
 default: p = "unknown"; break;
 }
 ocs_ddump_value(textbuf, "asic_type", "%s", p);

 switch(sli4->asic_rev) {
 case 132: p = "fpga"; break;
 case 139: p = "A0"; break;
 case 138: p = "A1"; break;
 case 137: p = "A2"; break;
 case 136: p = "A3"; break;
 case 135: p = "B0"; break;
 case 134: p = "C0"; break;
 case 133: p = "D0"; break;
 default: p = "unknown"; break;
 }
 ocs_ddump_value(textbuf, "asic_rev", "%s", p);

 ocs_ddump_value(textbuf, "e_d_tov", "%d", sli4->config.e_d_tov);
 ocs_ddump_value(textbuf, "r_a_tov", "%d", sli4->config.r_a_tov);
 ocs_ddump_value(textbuf, "link_module_type", "%d", sli4->config.link_module_type);
 ocs_ddump_value(textbuf, "rq_batch", "%d", sli4->config.rq_batch);
 ocs_ddump_value(textbuf, "topology", "%d", sli4->config.topology);
 ocs_ddump_value(textbuf, "wwpn", "%02x%02x%02x%02x%02x%02x%02x%02x",
    sli4->config.wwpn[0],
    sli4->config.wwpn[1],
    sli4->config.wwpn[2],
    sli4->config.wwpn[3],
    sli4->config.wwpn[4],
    sli4->config.wwpn[5],
    sli4->config.wwpn[6],
    sli4->config.wwpn[7]);
 ocs_ddump_value(textbuf, "wwnn", "%02x%02x%02x%02x%02x%02x%02x%02x",
    sli4->config.wwnn[0],
    sli4->config.wwnn[1],
    sli4->config.wwnn[2],
    sli4->config.wwnn[3],
    sli4->config.wwnn[4],
    sli4->config.wwnn[5],
    sli4->config.wwnn[6],
    sli4->config.wwnn[7]);
 ocs_ddump_value(textbuf, "fw_rev0", "%d", sli4->config.fw_rev[0]);
 ocs_ddump_value(textbuf, "fw_rev1", "%d", sli4->config.fw_rev[1]);
 ocs_ddump_value(textbuf, "fw_name0", "%s", (char*)sli4->config.fw_name[0]);
 ocs_ddump_value(textbuf, "fw_name1", "%s", (char*)sli4->config.fw_name[1]);
 ocs_ddump_value(textbuf, "hw_rev0", "%x", sli4->config.hw_rev[0]);
 ocs_ddump_value(textbuf, "hw_rev1", "%x", sli4->config.hw_rev[1]);
 ocs_ddump_value(textbuf, "hw_rev2", "%x", sli4->config.hw_rev[2]);
 ocs_ddump_value(textbuf, "sge_supported_length", "%x", sli4->config.sge_supported_length);
 ocs_ddump_value(textbuf, "sgl_page_sizes", "%x", sli4->config.sgl_page_sizes);
 ocs_ddump_value(textbuf, "max_sgl_pages", "%x", sli4->config.max_sgl_pages);
 ocs_ddump_value(textbuf, "high_login_mode", "%x", sli4->config.high_login_mode);
 ocs_ddump_value(textbuf, "sgl_pre_registered", "%x", sli4->config.sgl_pre_registered);
 ocs_ddump_value(textbuf, "sgl_pre_registration_required", "%x", sli4->config.sgl_pre_registration_required);

 ocs_ddump_value(textbuf, "sgl_chaining_capable", "%x", cparams->chaining_capable);
 ocs_ddump_value(textbuf, "frag_num_field_offset", "%x", cparams->frag_num_field_offset);
 ocs_ddump_value(textbuf, "frag_num_field_mask", "%016llx", (unsigned long long)cparams->frag_num_field_mask);
 ocs_ddump_value(textbuf, "sgl_index_field_offset", "%x", cparams->sgl_index_field_offset);
 ocs_ddump_value(textbuf, "sgl_index_field_mask", "%016llx", (unsigned long long)cparams->sgl_index_field_mask);
 ocs_ddump_value(textbuf, "chain_sge_initial_value_lo", "%x", cparams->chain_sge_initial_value_lo);
 ocs_ddump_value(textbuf, "chain_sge_initial_value_hi", "%x", cparams->chain_sge_initial_value_hi);

 ocs_ddump_value(textbuf, "max_vfi", "%d", sli_get_max_rsrc(sli4, SLI_RSRC_FCOE_VFI));
 ocs_ddump_value(textbuf, "max_vpi", "%d", sli_get_max_rsrc(sli4, SLI_RSRC_FCOE_VPI));
 ocs_ddump_value(textbuf, "max_rpi", "%d", sli_get_max_rsrc(sli4, SLI_RSRC_FCOE_RPI));
 ocs_ddump_value(textbuf, "max_xri", "%d", sli_get_max_rsrc(sli4, SLI_RSRC_FCOE_XRI));
 ocs_ddump_value(textbuf, "max_fcfi", "%d", sli_get_max_rsrc(sli4, SLI_RSRC_FCOE_FCFI));

 ocs_ddump_sli_q_fields(textbuf, sli4, SLI_QTYPE_EQ);
 ocs_ddump_sli_q_fields(textbuf, sli4, SLI_QTYPE_CQ);
 ocs_ddump_sli_q_fields(textbuf, sli4, SLI_QTYPE_MQ);
 ocs_ddump_sli_q_fields(textbuf, sli4, SLI_QTYPE_WQ);
 ocs_ddump_sli_q_fields(textbuf, sli4, SLI_QTYPE_RQ);

 ocs_ddump_endsection(textbuf, "sli4", 0);
}
