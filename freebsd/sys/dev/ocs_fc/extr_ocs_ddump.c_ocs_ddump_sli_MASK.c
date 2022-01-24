#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned long long chaining_capable; unsigned long long frag_num_field_offset; unsigned long long sgl_index_field_offset; unsigned long long chain_sge_initial_value_lo; unsigned long long chain_sge_initial_value_hi; scalar_t__ sgl_index_field_mask; scalar_t__ frag_num_field_mask; } ;
struct TYPE_7__ {unsigned long long e_d_tov; unsigned long long r_a_tov; unsigned long long link_module_type; unsigned long long rq_batch; unsigned long long topology; unsigned long long* fw_rev; unsigned long long* hw_rev; unsigned long long sge_supported_length; unsigned long long sgl_page_sizes; unsigned long long max_sgl_pages; unsigned long long high_login_mode; unsigned long long sgl_pre_registered; unsigned long long sgl_pre_registration_required; scalar_t__* fw_name; int /*<<< orphan*/ * wwnn; int /*<<< orphan*/ * wwpn; TYPE_3__ sgl_chaining_params; } ;
struct TYPE_8__ {unsigned long long sli_rev; unsigned long long sli_family; unsigned long long if_type; int asic_type; int asic_rev; TYPE_1__ config; } ;
typedef  TYPE_2__ sli4_t ;
typedef  TYPE_3__ sli4_sgl_chaining_params_t ;
typedef  int /*<<< orphan*/  ocs_textbuf_t ;

/* Variables and functions */
#define  SLI4_ASIC_REV_A0 139 
#define  SLI4_ASIC_REV_A1 138 
#define  SLI4_ASIC_REV_A2 137 
#define  SLI4_ASIC_REV_A3 136 
#define  SLI4_ASIC_REV_B0 135 
#define  SLI4_ASIC_REV_C0 134 
#define  SLI4_ASIC_REV_D0 133 
#define  SLI4_ASIC_REV_FPGA 132 
#define  SLI4_ASIC_TYPE_BE3 131 
#define  SLI4_ASIC_TYPE_LANCER 130 
#define  SLI4_ASIC_TYPE_LANCERG6 129 
#define  SLI4_ASIC_TYPE_SKYHAWK 128 
 int /*<<< orphan*/  SLI_QTYPE_CQ ; 
 int /*<<< orphan*/  SLI_QTYPE_EQ ; 
 int /*<<< orphan*/  SLI_QTYPE_MQ ; 
 int /*<<< orphan*/  SLI_QTYPE_RQ ; 
 int /*<<< orphan*/  SLI_QTYPE_WQ ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_FCFI ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_RPI ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_VFI ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_VPI ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_XRI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,...) ; 
 unsigned long long FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(ocs_textbuf_t *textbuf, sli4_t *sli4)
{
	sli4_sgl_chaining_params_t *cparams = &sli4->config.sgl_chaining_params;
	const char *p;

	FUNC1(textbuf, "sli4", 0);

	FUNC3(textbuf, "sli_rev", "%d", sli4->sli_rev);
	FUNC3(textbuf, "sli_family", "%d", sli4->sli_family);
	FUNC3(textbuf, "if_type", "%d", sli4->if_type);

	switch(sli4->asic_type) {
	case SLI4_ASIC_TYPE_BE3:	p = "BE3"; break;
	case SLI4_ASIC_TYPE_SKYHAWK:	p = "Skyhawk"; break;
	case SLI4_ASIC_TYPE_LANCER:	p = "Lancer"; break;
	case SLI4_ASIC_TYPE_LANCERG6:	p = "LancerG6"; break;
	default:			p = "unknown"; break;
	}
	FUNC3(textbuf, "asic_type", "%s", p);

	switch(sli4->asic_rev) {
	case SLI4_ASIC_REV_FPGA:	p = "fpga"; break;
	case SLI4_ASIC_REV_A0:		p = "A0"; break;
	case SLI4_ASIC_REV_A1:		p = "A1"; break;
	case SLI4_ASIC_REV_A2:		p = "A2"; break;
	case SLI4_ASIC_REV_A3:		p = "A3"; break;
	case SLI4_ASIC_REV_B0:		p = "B0"; break;
	case SLI4_ASIC_REV_C0:		p = "C0"; break;
	case SLI4_ASIC_REV_D0:		p = "D0"; break;
	default:			p = "unknown"; break;
	}
	FUNC3(textbuf, "asic_rev", "%s", p);

	FUNC3(textbuf, "e_d_tov", "%d", sli4->config.e_d_tov);
	FUNC3(textbuf, "r_a_tov", "%d", sli4->config.r_a_tov);
	FUNC3(textbuf, "link_module_type", "%d", sli4->config.link_module_type);
	FUNC3(textbuf, "rq_batch", "%d", sli4->config.rq_batch);
	FUNC3(textbuf, "topology", "%d", sli4->config.topology);
	FUNC3(textbuf, "wwpn", "%02x%02x%02x%02x%02x%02x%02x%02x",
			 sli4->config.wwpn[0],
			 sli4->config.wwpn[1],
			 sli4->config.wwpn[2],
			 sli4->config.wwpn[3],
			 sli4->config.wwpn[4],
			 sli4->config.wwpn[5],
			 sli4->config.wwpn[6],
			 sli4->config.wwpn[7]);
	FUNC3(textbuf, "wwnn", "%02x%02x%02x%02x%02x%02x%02x%02x",
			 sli4->config.wwnn[0],
			 sli4->config.wwnn[1],
			 sli4->config.wwnn[2],
			 sli4->config.wwnn[3],
			 sli4->config.wwnn[4],
			 sli4->config.wwnn[5],
			 sli4->config.wwnn[6],
			 sli4->config.wwnn[7]);
	FUNC3(textbuf, "fw_rev0", "%d", sli4->config.fw_rev[0]);
	FUNC3(textbuf, "fw_rev1", "%d", sli4->config.fw_rev[1]);
	FUNC3(textbuf, "fw_name0", "%s", (char*)sli4->config.fw_name[0]);
	FUNC3(textbuf, "fw_name1", "%s", (char*)sli4->config.fw_name[1]);
	FUNC3(textbuf, "hw_rev0", "%x", sli4->config.hw_rev[0]);
	FUNC3(textbuf, "hw_rev1", "%x", sli4->config.hw_rev[1]);
	FUNC3(textbuf, "hw_rev2", "%x", sli4->config.hw_rev[2]);
	FUNC3(textbuf, "sge_supported_length", "%x", sli4->config.sge_supported_length);
	FUNC3(textbuf, "sgl_page_sizes", "%x", sli4->config.sgl_page_sizes);
	FUNC3(textbuf, "max_sgl_pages", "%x", sli4->config.max_sgl_pages);
	FUNC3(textbuf, "high_login_mode", "%x", sli4->config.high_login_mode);
	FUNC3(textbuf, "sgl_pre_registered", "%x", sli4->config.sgl_pre_registered);
	FUNC3(textbuf, "sgl_pre_registration_required", "%x", sli4->config.sgl_pre_registration_required);

	FUNC3(textbuf, "sgl_chaining_capable", "%x", cparams->chaining_capable);
	FUNC3(textbuf, "frag_num_field_offset", "%x", cparams->frag_num_field_offset);
	FUNC3(textbuf, "frag_num_field_mask", "%016llx", (unsigned long long)cparams->frag_num_field_mask);
	FUNC3(textbuf, "sgl_index_field_offset", "%x", cparams->sgl_index_field_offset);
	FUNC3(textbuf, "sgl_index_field_mask", "%016llx", (unsigned long long)cparams->sgl_index_field_mask);
	FUNC3(textbuf, "chain_sge_initial_value_lo", "%x", cparams->chain_sge_initial_value_lo);
	FUNC3(textbuf, "chain_sge_initial_value_hi", "%x", cparams->chain_sge_initial_value_hi);

	FUNC3(textbuf, "max_vfi", "%d", FUNC4(sli4, SLI_RSRC_FCOE_VFI));
	FUNC3(textbuf, "max_vpi", "%d", FUNC4(sli4, SLI_RSRC_FCOE_VPI));
	FUNC3(textbuf, "max_rpi", "%d", FUNC4(sli4, SLI_RSRC_FCOE_RPI));
	FUNC3(textbuf, "max_xri", "%d", FUNC4(sli4, SLI_RSRC_FCOE_XRI));
	FUNC3(textbuf, "max_fcfi", "%d", FUNC4(sli4, SLI_RSRC_FCOE_FCFI));

	FUNC2(textbuf, sli4, SLI_QTYPE_EQ);
	FUNC2(textbuf, sli4, SLI_QTYPE_CQ);
	FUNC2(textbuf, sli4, SLI_QTYPE_MQ);
	FUNC2(textbuf, sli4, SLI_QTYPE_WQ);
	FUNC2(textbuf, sli4, SLI_QTYPE_RQ);

	FUNC0(textbuf, "sli4", 0);
}