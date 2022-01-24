#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ng_source_stats {size_t index; int width; int /*<<< orphan*/  maxPps; int /*<<< orphan*/  startTime; int /*<<< orphan*/  elapsedTime; int /*<<< orphan*/  endTime; int /*<<< orphan*/  queueFrames; int /*<<< orphan*/  queueOctets; } ;
struct ng_source_embed_info {size_t index; int width; int /*<<< orphan*/  maxPps; int /*<<< orphan*/  startTime; int /*<<< orphan*/  elapsedTime; int /*<<< orphan*/  endTime; int /*<<< orphan*/  queueFrames; int /*<<< orphan*/  queueOctets; } ;
struct ng_source_embed_cnt_info {size_t index; int width; int /*<<< orphan*/  maxPps; int /*<<< orphan*/  startTime; int /*<<< orphan*/  elapsedTime; int /*<<< orphan*/  endTime; int /*<<< orphan*/  queueFrames; int /*<<< orphan*/  queueOctets; } ;
struct TYPE_13__ {int typecookie; int flags; int const cmd; int arglen; } ;
struct ng_mesg {TYPE_3__ header; scalar_t__ data; } ;
typedef  TYPE_4__* sc_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_11__ {int /*<<< orphan*/  ifq_len; } ;
struct TYPE_14__ {struct ng_source_stats* embed_counter; struct ng_source_stats embed_timestamp; struct ng_source_stats stats; TYPE_2__* node; TYPE_1__ snd_queue; int /*<<< orphan*/  queueOctets; } ;
struct TYPE_12__ {int nd_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int NGF_RESP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ng_mesg*) ; 
#define  NGM_ETHER_COOKIE 142 
#define  NGM_ETHER_GET_IFNAME 141 
#define  NGM_SOURCE_CLR_DATA 140 
#define  NGM_SOURCE_CLR_STATS 139 
#define  NGM_SOURCE_COOKIE 138 
#define  NGM_SOURCE_GETCLR_STATS 137 
#define  NGM_SOURCE_GET_COUNTER 136 
#define  NGM_SOURCE_GET_STATS 135 
#define  NGM_SOURCE_GET_TIMESTAMP 134 
#define  NGM_SOURCE_SETIFACE 133 
#define  NGM_SOURCE_SETPPS 132 
#define  NGM_SOURCE_SET_COUNTER 131 
#define  NGM_SOURCE_SET_TIMESTAMP 130 
#define  NGM_SOURCE_START 129 
#define  NGM_SOURCE_STOP 128 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*,struct ng_mesg*,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ng_mesg*) ; 
 int NG_SOURCE_ACTIVE ; 
 size_t NG_SOURCE_COUNTERS ; 
 int /*<<< orphan*/  FUNC5 (struct ng_source_stats*,struct ng_source_stats*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ng_source_stats*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(node_p node, item_p item, hook_p lasthook)
{
	sc_p sc = FUNC3(node);
	struct ng_mesg *msg, *resp = NULL;
	int error = 0;

	FUNC0(item, msg);

	switch (msg->header.typecookie) {
	case NGM_SOURCE_COOKIE:
		if (msg->header.flags & NGF_RESP) {
			error = EINVAL;
			break;
		}
		switch (msg->header.cmd) {
		case NGM_SOURCE_GET_STATS:
		case NGM_SOURCE_CLR_STATS:
		case NGM_SOURCE_GETCLR_STATS:
                    {
			struct ng_source_stats *stats;

                        if (msg->header.cmd != NGM_SOURCE_CLR_STATS) {
                                FUNC2(resp, msg,
                                    sizeof(*stats), M_NOWAIT);
				if (resp == NULL) {
					error = ENOMEM;
					goto done;
				}
				sc->stats.queueOctets = sc->queueOctets;
				sc->stats.queueFrames = sc->snd_queue.ifq_len;
				if ((sc->node->nd_flags & NG_SOURCE_ACTIVE)
				    && !FUNC13(&sc->stats.endTime)) {
					FUNC7(&sc->stats.elapsedTime);
					FUNC14(&sc->stats.elapsedTime,
					    &sc->stats.startTime);
				}
				stats = (struct ng_source_stats *)resp->data;
				FUNC5(&sc->stats, stats, sizeof(* stats));
                        }
                        if (msg->header.cmd != NGM_SOURCE_GET_STATS)
				FUNC6(&sc->stats, sizeof(sc->stats));
		    }
		    break;
		case NGM_SOURCE_START:
		    {
			uint64_t packets;

			if (msg->header.arglen != sizeof(uint64_t)) {
				error = EINVAL;
				break;
			}

			packets = *(uint64_t *)msg->data;

			error = FUNC10(sc, packets);

		    	break;
		    }
		case NGM_SOURCE_STOP:
			FUNC11(sc);
			break;
		case NGM_SOURCE_CLR_DATA:
			FUNC8(sc);
			break;
		case NGM_SOURCE_SETIFACE:
		    {
			char *ifname = (char *)msg->data;

			if (msg->header.arglen < 2) {
				error = EINVAL;
				break;
			}

			FUNC12(sc, ifname);
			break;
		    }
		case NGM_SOURCE_SETPPS:
		    {
			uint32_t pps;

			if (msg->header.arglen != sizeof(uint32_t)) {
				error = EINVAL;
				break;
			}

			pps = *(uint32_t *)msg->data;

			sc->stats.maxPps = pps;

			break;
		    }
		case NGM_SOURCE_SET_TIMESTAMP:
		    {
			struct ng_source_embed_info *embed;

			if (msg->header.arglen != sizeof(*embed)) {
				error = EINVAL;
				goto done;
			}
			embed = (struct ng_source_embed_info *)msg->data;
			FUNC5(embed, &sc->embed_timestamp, sizeof(*embed));

			break;
		    }
		case NGM_SOURCE_GET_TIMESTAMP:
		    {
			struct ng_source_embed_info *embed;

			FUNC2(resp, msg, sizeof(*embed), M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				goto done;
			}
			embed = (struct ng_source_embed_info *)resp->data;
			FUNC5(&sc->embed_timestamp, embed, sizeof(*embed));

			break;
		    }
		case NGM_SOURCE_SET_COUNTER:
		    {
			struct ng_source_embed_cnt_info *embed;

			if (msg->header.arglen != sizeof(*embed)) {
				error = EINVAL;
				goto done;
			}
			embed = (struct ng_source_embed_cnt_info *)msg->data;
			if (embed->index >= NG_SOURCE_COUNTERS ||
			    !(embed->width == 1 || embed->width == 2 ||
			    embed->width == 4)) {
				error = EINVAL;
				goto done;
			}
			FUNC5(embed, &sc->embed_counter[embed->index],
			    sizeof(*embed));

			break;
		    }
		case NGM_SOURCE_GET_COUNTER:
		    {
			uint8_t index = *(uint8_t *)msg->data;
			struct ng_source_embed_cnt_info *embed;

			if (index >= NG_SOURCE_COUNTERS) {
				error = EINVAL;
				goto done;
			}
			FUNC2(resp, msg, sizeof(*embed), M_NOWAIT);
			if (resp == NULL) {
				error = ENOMEM;
				goto done;
			}
			embed = (struct ng_source_embed_cnt_info *)resp->data;
			FUNC5(&sc->embed_counter[index], embed, sizeof(*embed));

			break;
		    }
		default:
			error = EINVAL;
			break;
		}
		break;
	case NGM_ETHER_COOKIE:
		if (!(msg->header.flags & NGF_RESP)) {
			error = EINVAL;
			break;
		}
		switch (msg->header.cmd) {
		case NGM_ETHER_GET_IFNAME:
		    {
			char *ifname = (char *)msg->data;

			if (msg->header.arglen < 2) {
				error = EINVAL;
				break;
			}

			if (FUNC12(sc, ifname) == 0)
				FUNC9(sc, 0);
			break;
		    }
		default:
			error = EINVAL;
		}
		break;
	default:
		error = EINVAL;
		break;
	}

done:
	/* Take care of synchronous response, if any. */
	FUNC4(error, node, item, resp);
	/* Free the message and return. */
	FUNC1(msg);
	return (error);
}