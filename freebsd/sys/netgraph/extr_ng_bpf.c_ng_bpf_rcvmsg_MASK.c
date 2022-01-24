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
struct TYPE_3__ {int typecookie; int const cmd; int arglen; } ;
struct ng_mesg {char* data; TYPE_1__ header; } ;
struct ng_bpf_hookstat {char* thisHook; int /*<<< orphan*/  bpf_prog_len; } ;
struct ng_bpf_hookprog {char* thisHook; int /*<<< orphan*/  bpf_prog_len; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/ * hook_p ;
typedef  TYPE_2__* hinfo_p ;
struct TYPE_4__ {struct ng_bpf_hookstat stats; struct ng_bpf_hookstat* prog; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_BPF_CLR_STATS 133 
#define  NGM_BPF_COOKIE 132 
#define  NGM_BPF_GETCLR_STATS 131 
#define  NGM_BPF_GET_PROGRAM 130 
#define  NGM_BPF_GET_STATS 129 
#define  NGM_BPF_SET_PROGRAM 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC7 (struct ng_bpf_hookstat*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ng_bpf_hookstat*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct ng_bpf_hookstat* const) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC11(node_p node, item_p item, hook_p lasthook)
{
	struct ng_mesg *msg;
	struct ng_mesg *resp = NULL;
	int error = 0;

	FUNC1(item, msg);
	switch (msg->header.typecookie) {
	case NGM_BPF_COOKIE:
		switch (msg->header.cmd) {
		case NGM_BPF_SET_PROGRAM:
		    {
			struct ng_bpf_hookprog *const
			    hp = (struct ng_bpf_hookprog *)msg->data;
			hook_p hook;

			/* Sanity check */
			if (msg->header.arglen < sizeof(*hp)
			    || msg->header.arglen
			      != FUNC2(hp->bpf_prog_len))
				FUNC0(EINVAL);

			/* Find hook */
			if ((hook = FUNC10(node, hp->thisHook)) == NULL)
				FUNC0(ENOENT);

			/* Set new program */
			if ((error = FUNC9(hook, hp)) != 0)
				FUNC0(error);
			break;
		    }

		case NGM_BPF_GET_PROGRAM:
		    {
			struct ng_bpf_hookprog *hp;
			hook_p hook;

			/* Sanity check */
			if (msg->header.arglen == 0)
				FUNC0(EINVAL);
			msg->data[msg->header.arglen - 1] = '\0';

			/* Find hook */
			if ((hook = FUNC10(node, msg->data)) == NULL)
				FUNC0(ENOENT);

			/* Build response */
			hp = ((hinfo_p)FUNC4(hook))->prog;
			FUNC5(resp, msg,
			    FUNC2(hp->bpf_prog_len), M_NOWAIT);
			if (resp == NULL)
				FUNC0(ENOMEM);
			FUNC7(hp, resp->data,
			   FUNC2(hp->bpf_prog_len));
			break;
		    }

		case NGM_BPF_GET_STATS:
		case NGM_BPF_CLR_STATS:
		case NGM_BPF_GETCLR_STATS:
		    {
			struct ng_bpf_hookstat *stats;
			hook_p hook;

			/* Sanity check */
			if (msg->header.arglen == 0)
				FUNC0(EINVAL);
			msg->data[msg->header.arglen - 1] = '\0';

			/* Find hook */
			if ((hook = FUNC10(node, msg->data)) == NULL)
				FUNC0(ENOENT);
			stats = &((hinfo_p)FUNC4(hook))->stats;

			/* Build response (if desired) */
			if (msg->header.cmd != NGM_BPF_CLR_STATS) {
				FUNC5(resp,
				    msg, sizeof(*stats), M_NOWAIT);
				if (resp == NULL)
					FUNC0(ENOMEM);
				FUNC7(stats, resp->data, sizeof(*stats));
			}

			/* Clear stats (if desired) */
			if (msg->header.cmd != NGM_BPF_GET_STATS)
				FUNC8(stats, sizeof(*stats));
			break;
		    }

		default:
			error = EINVAL;
			break;
		}
		break;
	default:
		error = EINVAL;
		break;
	}
done:
	FUNC6(error, node, item, resp);
	FUNC3(msg);
	return (error);
}