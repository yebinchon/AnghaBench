#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct ib_sa_query {struct ib_sa_client* client; TYPE_3__* mad_buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  release; int /*<<< orphan*/ * callback; struct ib_sa_port* port; } ;
struct ib_sa_port {struct ib_mad_agent* agent; } ;
struct ib_sa_path_rec {int dummy; } ;
struct ib_sa_path_query {void (* callback ) (int,struct ib_sa_path_rec*,void*) ;struct ib_sa_query sa_query; void* context; } ;
struct TYPE_5__ {int /*<<< orphan*/  comp_mask; } ;
struct TYPE_4__ {int /*<<< orphan*/  attr_id; int /*<<< orphan*/  method; } ;
struct ib_sa_mad {int /*<<< orphan*/  data; TYPE_2__ sa_hdr; TYPE_1__ mad_hdr; } ;
struct ib_sa_device {size_t start_port; struct ib_sa_port* port; } ;
struct ib_sa_client {int dummy; } ;
struct ib_mad_agent {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  ib_sa_comp_mask ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {struct ib_sa_path_rec** context; struct ib_sa_mad* mad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IB_MGMT_METHOD_GET ; 
 int /*<<< orphan*/  IB_SA_ATTR_PATH_REC ; 
 int /*<<< orphan*/  IB_SA_ENABLE_LOCAL_SERVICE ; 
 int FUNC1 (struct ib_sa_query*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_sa_query*) ; 
 struct ib_sa_device* FUNC4 (struct ib_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_sa_path_rec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_sa_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_sa_client*) ; 
 int /*<<< orphan*/ * ib_sa_path_rec_callback ; 
 int /*<<< orphan*/  ib_sa_path_rec_release ; 
 int /*<<< orphan*/  FUNC8 (struct ib_sa_mad*,struct ib_mad_agent*) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_sa_path_query*) ; 
 struct ib_sa_path_query* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  path_rec_table ; 
 int /*<<< orphan*/  sa_client ; 
 int FUNC11 (struct ib_sa_query*,int,int /*<<< orphan*/ ) ; 

int FUNC12(struct ib_sa_client *client,
		       struct ib_device *device, u8 port_num,
		       struct ib_sa_path_rec *rec,
		       ib_sa_comp_mask comp_mask,
		       int timeout_ms, gfp_t gfp_mask,
		       void (*callback)(int status,
					struct ib_sa_path_rec *resp,
					void *context),
		       void *context,
		       struct ib_sa_query **sa_query)
{
	struct ib_sa_path_query *query;
	struct ib_sa_device *sa_dev = FUNC4(device, &sa_client);
	struct ib_sa_port   *port;
	struct ib_mad_agent *agent;
	struct ib_sa_mad *mad;
	int ret;

	if (!sa_dev)
		return -ENODEV;

	port  = &sa_dev->port[port_num - sa_dev->start_port];
	agent = port->agent;

	query = FUNC10(sizeof(*query), gfp_mask);
	if (!query)
		return -ENOMEM;

	query->sa_query.port     = port;
	ret = FUNC1(&query->sa_query, gfp_mask);
	if (ret)
		goto err1;

	FUNC6(client);
	query->sa_query.client = client;
	query->callback        = callback;
	query->context         = context;

	mad = query->sa_query.mad_buf->mad;
	FUNC8(mad, agent);

	query->sa_query.callback = callback ? ib_sa_path_rec_callback : NULL;
	query->sa_query.release  = ib_sa_path_rec_release;
	mad->mad_hdr.method	 = IB_MGMT_METHOD_GET;
	mad->mad_hdr.attr_id	 = FUNC2(IB_SA_ATTR_PATH_REC);
	mad->sa_hdr.comp_mask	 = comp_mask;

	FUNC5(path_rec_table, FUNC0(path_rec_table), rec, mad->data);

	*sa_query = &query->sa_query;

	query->sa_query.flags |= IB_SA_ENABLE_LOCAL_SERVICE;
	query->sa_query.mad_buf->context[1] = rec;

	ret = FUNC11(&query->sa_query, timeout_ms, gfp_mask);
	if (ret < 0)
		goto err2;

	return ret;

err2:
	*sa_query = NULL;
	FUNC7(query->sa_query.client);
	FUNC3(&query->sa_query);

err1:
	FUNC9(query);
	return ret;
}