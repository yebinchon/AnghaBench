#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_9__ {int eqid; int* val; int /*<<< orphan*/  mv_pkd; int /*<<< orphan*/  pfn_vfn; int /*<<< orphan*/  cidx; } ;
struct TYPE_8__ {int eqid; int* wrhdr; int /*<<< orphan*/  pfn_vfn; int /*<<< orphan*/  cidx; } ;
struct TYPE_7__ {int regaddr; int regval; } ;
struct TYPE_6__ {int* info; } ;
struct TYPE_10__ {TYPE_4__ acl; TYPE_3__ wr; TYPE_2__ hwmodule; TYPE_1__ exception; } ;
struct fw_error_cmd {int op_to_type; TYPE_5__ u; } ;
struct adapter {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FW_ERROR_CMD ; 
#define  FW_ERROR_TYPE_ACL 131 
#define  FW_ERROR_TYPE_EXCEPTION 130 
#define  FW_ERROR_TYPE_HWMODULE 129 
#define  FW_ERROR_TYPE_WR 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int FUNC9 (int*) ; 

__attribute__((used)) static int
FUNC10(struct adapter *adap, const __be64 *rpl)
{
	u8 opcode = *(const u8 *)rpl;
	const struct fw_error_cmd *e = (const void *)rpl;
	unsigned int i;

	if (opcode != FW_ERROR_CMD) {
		FUNC8(LOG_ERR,
		    "%s: Received WRERR_RPL message with opcode %#x\n",
		    FUNC7(adap->dev), opcode);
		return (EINVAL);
	}
	FUNC8(LOG_ERR, "%s: FW_ERROR (%s) ", FUNC7(adap->dev),
	    FUNC0(FUNC6(e->op_to_type)) ? "fatal" :
	    "non-fatal");
	switch (FUNC3(FUNC6(e->op_to_type))) {
	case FW_ERROR_TYPE_EXCEPTION:
		FUNC8(LOG_ERR, "exception info:\n");
		for (i = 0; i < FUNC9(e->u.exception.info); i++)
			FUNC8(LOG_ERR, "%s%08x", i == 0 ? "\t" : " ",
			    FUNC6(e->u.exception.info[i]));
		FUNC8(LOG_ERR, "\n");
		break;
	case FW_ERROR_TYPE_HWMODULE:
		FUNC8(LOG_ERR, "HW module regaddr %08x regval %08x\n",
		    FUNC6(e->u.hwmodule.regaddr),
		    FUNC6(e->u.hwmodule.regval));
		break;
	case FW_ERROR_TYPE_WR:
		FUNC8(LOG_ERR, "WR cidx %d PF %d VF %d eqid %d hdr:\n",
		    FUNC5(e->u.wr.cidx),
		    FUNC2(FUNC5(e->u.wr.pfn_vfn)),
		    FUNC4(FUNC5(e->u.wr.pfn_vfn)),
		    FUNC6(e->u.wr.eqid));
		for (i = 0; i < FUNC9(e->u.wr.wrhdr); i++)
			FUNC8(LOG_ERR, "%s%02x", i == 0 ? "\t" : " ",
			    e->u.wr.wrhdr[i]);
		FUNC8(LOG_ERR, "\n");
		break;
	case FW_ERROR_TYPE_ACL:
		FUNC8(LOG_ERR, "ACL cidx %d PF %d VF %d eqid %d %s",
		    FUNC5(e->u.acl.cidx),
		    FUNC2(FUNC5(e->u.acl.pfn_vfn)),
		    FUNC4(FUNC5(e->u.acl.pfn_vfn)),
		    FUNC6(e->u.acl.eqid),
		    FUNC1(FUNC5(e->u.acl.mv_pkd)) ? "vlanid" :
		    "MAC");
		for (i = 0; i < FUNC9(e->u.acl.val); i++)
			FUNC8(LOG_ERR, " %02x", e->u.acl.val[i]);
		FUNC8(LOG_ERR, "\n");
		break;
	default:
		FUNC8(LOG_ERR, "type %#x\n",
		    FUNC3(FUNC6(e->op_to_type)));
		return (EINVAL);
	}
	return (0);
}