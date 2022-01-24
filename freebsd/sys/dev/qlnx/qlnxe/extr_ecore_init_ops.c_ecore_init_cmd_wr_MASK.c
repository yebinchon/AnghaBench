#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  offset; } ;
struct TYPE_4__ {TYPE_1__ runtime; int /*<<< orphan*/  zeros_count; int /*<<< orphan*/  inline_val; } ;
struct init_write_op {TYPE_2__ args; int /*<<< orphan*/  data; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*,int) ; 
 int ECORE_INVAL ; 
 int ECORE_SUCCESS ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
#define  INIT_SRC_ARRAY 131 
#define  INIT_SRC_INLINE 130 
#define  INIT_SRC_RUNTIME 129 
#define  INIT_SRC_ZEROS 128 
 int /*<<< orphan*/  INIT_WRITE_OP_ADDRESS ; 
 int /*<<< orphan*/  INIT_WRITE_OP_SOURCE ; 
 int /*<<< orphan*/  INIT_WRITE_OP_WIDE_BUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,struct init_write_op*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,int,int) ; 
 int FUNC7 (struct ecore_hwfn*,struct ecore_ptt*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*,struct ecore_ptt*,int,int) ; 

__attribute__((used)) static enum _ecore_status_t FUNC9(struct ecore_hwfn *p_hwfn,
					      struct ecore_ptt *p_ptt,
					      struct init_write_op *p_cmd,
					      bool b_can_dmae)
{
	u32 data = FUNC3(p_cmd->data);
	bool b_must_dmae = FUNC1(data, INIT_WRITE_OP_WIDE_BUS);
	u32 addr = FUNC1(data, INIT_WRITE_OP_ADDRESS) << 2;
	enum _ecore_status_t rc	= ECORE_SUCCESS;

	/* Sanitize */
	if (b_must_dmae && !b_can_dmae) {
		FUNC0(p_hwfn, true,
			  "Need to write to %08x for Wide-bus but DMAE isn't allowed\n",
			  addr);
		return ECORE_INVAL;
	}

	switch (FUNC1(data, INIT_WRITE_OP_SOURCE)) {
	case INIT_SRC_INLINE:
		data = FUNC3(p_cmd->args.inline_val);
		FUNC8(p_hwfn, p_ptt, addr, data);
		break;
	case INIT_SRC_ZEROS:
		data = FUNC3(p_cmd->args.zeros_count);
		if (b_must_dmae || (b_can_dmae && (data >= 64)))
			rc = FUNC6(p_hwfn, p_ptt, addr, data);
		else
			FUNC5(p_hwfn, p_ptt, addr, 0, data);
		break;
	case INIT_SRC_ARRAY:
		rc = FUNC4(p_hwfn, p_ptt, p_cmd,
					  b_must_dmae, b_can_dmae);
		break;
	case INIT_SRC_RUNTIME:
		rc = FUNC7(p_hwfn, p_ptt, addr,
				   FUNC2(p_cmd->args.runtime.offset),
				   FUNC2(p_cmd->args.runtime.size),
				   b_must_dmae);
		break;
	}

	return rc;
}