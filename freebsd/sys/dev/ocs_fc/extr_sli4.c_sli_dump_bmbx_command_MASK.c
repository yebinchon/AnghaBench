#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_10__ {scalar_t__ virt; } ;
struct TYPE_13__ {int /*<<< orphan*/  os; TYPE_3__* bmbx_non_emb_pmd; TYPE_1__ bmbx; } ;
typedef  TYPE_4__ sli4_t ;
struct TYPE_14__ {scalar_t__ address_high; scalar_t__ address_low; } ;
typedef  TYPE_5__ sli4_sli_config_pmd_t ;
struct TYPE_15__ {int request_length; } ;
typedef  TYPE_6__ sli4_req_hdr_t ;
struct TYPE_16__ {scalar_t__ command; } ;
typedef  TYPE_7__ sli4_mbox_command_header_t ;
struct TYPE_11__ {TYPE_5__ mem; scalar_t__ embed; } ;
struct TYPE_17__ {int pmd_count; TYPE_2__ payload; scalar_t__ emb; } ;
typedef  TYPE_8__ sli4_cmd_sli_config_t ;
typedef  int /*<<< orphan*/  label ;
struct TYPE_12__ {int /*<<< orphan*/  phys; TYPE_6__* virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_DEBUG_ENABLE_MQ_DUMP ; 
 scalar_t__ SLI4_MBOX_COMMAND_SLI_CONFIG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,...) ; 

__attribute__((used)) static void
FUNC6(sli4_t *sli4, void *mbx, const char *prefix)
{
	uint32_t size = 0;
	char label[64];
	uint32_t i;
	/* Mailbox diagnostic logging */
	sli4_mbox_command_header_t *hdr = (sli4_mbox_command_header_t *)mbx;

	if (!FUNC2(OCS_DEBUG_ENABLE_MQ_DUMP)) {
		return;
	}

	if (hdr->command == SLI4_MBOX_COMMAND_SLI_CONFIG) {
		sli4_cmd_sli_config_t *sli_config = (sli4_cmd_sli_config_t *)hdr;
		sli4_req_hdr_t	*sli_config_hdr;
		if (sli_config->emb) {
			FUNC5(label, sizeof(label), "%s (emb)", prefix);

			/*  if embedded, dump entire command */
			sli_config_hdr = (sli4_req_hdr_t *)sli_config->payload.embed;
			size = sizeof(*sli_config) - sizeof(sli_config->payload) +
				sli_config_hdr->request_length + (4*sizeof(uint32_t));
			FUNC3(OCS_DEBUG_ENABLE_MQ_DUMP, sli4->os, label,
				   (uint8_t *)sli4->bmbx.virt, size);
		} else {
			sli4_sli_config_pmd_t *pmd;
			FUNC5(label, sizeof(label), "%s (non-emb hdr)", prefix);

			/* if non-embedded, break up into two parts: SLI_CONFIG hdr
			   and the payload(s) */
			size = sizeof(*sli_config) - sizeof(sli_config->payload) + (12 * sli_config->pmd_count);
			FUNC3(OCS_DEBUG_ENABLE_MQ_DUMP, sli4->os, label,
				   (uint8_t *)sli4->bmbx.virt, size);

			/* as sanity check, make sure first PMD matches what was saved */
			pmd = &sli_config->payload.mem;
			if ((pmd->address_high == FUNC0(sli4->bmbx_non_emb_pmd->phys)) &&
			    (pmd->address_low == FUNC1(sli4->bmbx_non_emb_pmd->phys))) {
				for (i = 0; i < sli_config->pmd_count; i++, pmd++) {
					sli_config_hdr = sli4->bmbx_non_emb_pmd->virt;
					FUNC5(label, sizeof(label), "%s (non-emb pay[%d])",
						     prefix, i);
					FUNC3(OCS_DEBUG_ENABLE_MQ_DUMP, sli4->os, label,
						   (uint8_t *)sli4->bmbx_non_emb_pmd->virt,
						   sli_config_hdr->request_length + (4*sizeof(uint32_t)));
				}
			} else {
				FUNC4(sli4->os, "pmd addr does not match pmd:%x %x (%x %x)\n",
					pmd->address_high, pmd->address_low,
					FUNC0(sli4->bmbx_non_emb_pmd->phys),
					FUNC1(sli4->bmbx_non_emb_pmd->phys));
			}

		}
	} else {
		/* not an SLI_CONFIG command, just display first 64 bytes, like we do
		   for MQEs */
		size = 64;
		FUNC3(OCS_DEBUG_ENABLE_MQ_DUMP, sli4->os, prefix,
			   (uint8_t *)mbx, size);
	}
}