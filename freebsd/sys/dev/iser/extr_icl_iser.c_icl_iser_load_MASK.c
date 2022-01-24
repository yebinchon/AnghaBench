#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iser_global {int dummy; } ;
struct icl_iser_pdu {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  close_conns_mutex; int /*<<< orphan*/  connlist; int /*<<< orphan*/  connlist_mutex; int /*<<< orphan*/  device_list; int /*<<< orphan*/  device_list_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  icl_iser_ncons ; 
 int /*<<< orphan*/  icl_pdu_zone ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ ig ; 
 int /*<<< orphan*/  iser_limits ; 
 int /*<<< orphan*/  iser_new_conn ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(void)
{
	int error;

	FUNC1("Starting iSER datamover...");

	icl_pdu_zone = FUNC8("icl_iser_pdu", sizeof(struct icl_iser_pdu),
				   NULL, NULL, NULL, NULL,
				   UMA_ALIGN_PTR, 0);
	/* FIXME: Check rc */

	FUNC6(&icl_iser_ncons, 0);

	error = FUNC3("iser", true, 0, iser_limits, iser_new_conn);
	FUNC2(error == 0, ("failed to register iser"));

	FUNC4(&ig, 0, sizeof(struct iser_global));

	/* device init is called only after the first addr resolution */
	FUNC7(&ig.device_list_mutex,  "global_device_lock");
	FUNC0(&ig.device_list);
	FUNC5(&ig.connlist_mutex, "iser_global_conn_lock", NULL, MTX_DEF);
	FUNC0(&ig.connlist);
	FUNC7(&ig.close_conns_mutex,  "global_close_conns_lock");

	return (error);
}