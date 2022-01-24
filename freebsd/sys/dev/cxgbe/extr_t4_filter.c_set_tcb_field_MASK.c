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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u_int ;
struct wrq_cookie {int dummy; } ;
struct cpl_set_tcb_field {void* val; void* mask; void* word_cookie; void* reply_ctrl; } ;
struct TYPE_3__ {int /*<<< orphan*/  abs_id; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ctrlq; TYPE_1__ fwq; } ;
struct adapter {TYPE_2__ sge; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_COOKIE_HASHFILTER ; 
 int /*<<< orphan*/  CPL_SET_TCB_FIELD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cpl_set_tcb_field*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cpl_set_tcb_field*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct cpl_set_tcb_field*,struct wrq_cookie*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 void* FUNC8 (int) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 struct cpl_set_tcb_field* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct wrq_cookie*) ; 

__attribute__((used)) static int
FUNC11(struct adapter *sc, u_int tid, uint16_t word, uint64_t mask,
    uint64_t val, int no_reply)
{
	struct wrq_cookie cookie;
	struct cpl_set_tcb_field *req;

	req = FUNC10(&sc->sge.ctrlq[0], FUNC7(sizeof(*req), 16), &cookie);
	if (req == NULL)
		return (ENOMEM);
	FUNC5(req, sizeof(*req));
	FUNC0(req, CPL_SET_TCB_FIELD, tid);
	if (no_reply == 0) {
		req->reply_ctrl = FUNC8(FUNC3(sc->sge.fwq.abs_id) |
		    FUNC2(0));
	} else
		req->reply_ctrl = FUNC8(FUNC2(1));
	req->word_cookie = FUNC8(FUNC4(word) | FUNC1(CPL_COOKIE_HASHFILTER));
	req->mask = FUNC9(mask);
	req->val = FUNC9(val);
	FUNC6(&sc->sge.ctrlq[0], req, &cookie);

	return (0);
}