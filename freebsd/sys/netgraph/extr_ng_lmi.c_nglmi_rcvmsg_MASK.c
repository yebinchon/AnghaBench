#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nglmistat {int autod; int fixed; int* up; int* seen; int /*<<< orphan*/  hook; int /*<<< orphan*/  proto; } ;
struct TYPE_4__ {int typecookie; int arglen; int /*<<< orphan*/  cmd; } ;
struct ng_mesg {char* data; TYPE_1__ header; } ;
typedef  TYPE_2__* sc_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {char* protoname; int flags; int liv_rate; int* dlci_state; int /*<<< orphan*/  seq_retries; int /*<<< orphan*/  lmi_channel0; int /*<<< orphan*/  lmi_channel; } ;

/* Variables and functions */
#define  DLCI_DOWN 133 
#define  DLCI_UP 132 
 int EINVAL ; 
 int ENOMEM ; 
 int MAXDLCI ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_GENERIC_COOKIE 131 
#define  NGM_LMI_COOKIE 130 
#define  NGM_LMI_GET_STATUS 129 
#define  NGM_TEXT_STATUS 128 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int NG_TEXTRESPONSE ; 
 int SCF_AUTO ; 
 int SCF_FIXED ; 
 int FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC7(node_p node, item_p item, hook_p lasthook)
{
	sc_p    sc = FUNC3(node);
	struct ng_mesg *resp = NULL;
	int     error = 0;
	struct ng_mesg *msg;

	FUNC0(item, msg);
	switch (msg->header.typecookie) {
	case NGM_GENERIC_COOKIE:
		switch (msg->header.cmd) {
		case NGM_TEXT_STATUS:
		    {
			char   *arg;
			int     pos, count;

			FUNC2(resp, msg, NG_TEXTRESPONSE, M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				break;
			}
			arg = resp->data;
			pos = FUNC5(arg, "protocol %s ", sc->protoname);
			if (sc->flags & SCF_FIXED)
				pos += FUNC5(arg + pos, "fixed\n");
			else if (sc->flags & SCF_AUTO)
				pos += FUNC5(arg + pos, "auto-detecting\n");
			else
				pos += FUNC5(arg + pos, "auto on dlci %d\n",
				    (sc->lmi_channel == sc->lmi_channel0) ?
				    0 : 1023);
			pos += FUNC5(arg + pos,
			    "keepalive period: %d seconds\n", sc->liv_rate);
			pos += FUNC5(arg + pos,
			    "unacknowledged keepalives: %ld\n",
			    sc->seq_retries);
			for (count = 0;
			     ((count <= MAXDLCI)
			      && (pos < (NG_TEXTRESPONSE - 20)));
			     count++) {
				if (sc->dlci_state[count]) {
					pos += FUNC5(arg + pos,
					       "dlci %d %s\n", count,
					       (sc->dlci_state[count]
					== DLCI_UP) ? "up" : "down");
				}
			}
			resp->header.arglen = pos + 1;
			break;
		    }
		default:
			error = EINVAL;
			break;
		}
		break;
	case NGM_LMI_COOKIE:
		switch (msg->header.cmd) {
		case NGM_LMI_GET_STATUS:
		    {
			struct nglmistat *stat;
			int k;

			FUNC2(resp, msg, sizeof(*stat), M_NOWAIT);
			if (!resp) {
				error = ENOMEM;
				break;
			}
			stat = (struct nglmistat *) resp->data;
			FUNC6(stat->proto,
			     sc->protoname, sizeof(stat->proto) - 1);
			FUNC6(stat->hook,
			      sc->protoname, sizeof(stat->hook) - 1);
			stat->autod = !!(sc->flags & SCF_AUTO);
			stat->fixed = !!(sc->flags & SCF_FIXED);
			for (k = 0; k <= MAXDLCI; k++) {
				switch (sc->dlci_state[k]) {
				case DLCI_UP:
					stat->up[k / 8] |= (1 << (k % 8));
					/* fall through */
				case DLCI_DOWN:
					stat->seen[k / 8] |= (1 << (k % 8));
					break;
				}
			}
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

	FUNC4(error, node, item, resp);
	FUNC1(msg);
	return (error);
}