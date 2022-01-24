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
typedef  int /*<<< orphan*/  u_char ;
struct mbuf {int dummy; } ;
struct cbcp_header {int /*<<< orphan*/  length; int /*<<< orphan*/  id; int /*<<< orphan*/  code; } ;
struct cbcp_data {scalar_t__ length; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct cbcp {TYPE_3__* p; TYPE_1__ fsm; } ;
struct TYPE_6__ {int /*<<< orphan*/  link; TYPE_2__* dl; } ;
struct TYPE_5__ {int /*<<< orphan*/  bundle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LogDEBUG ; 
 scalar_t__ FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  MB_CBCPOUT ; 
 int /*<<< orphan*/  PROTO_CBCP ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct mbuf*) ; 
 struct mbuf* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct cbcp_data*,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct cbcp *cbcp, u_char code, struct cbcp_data *data)
{
  struct cbcp_header *head;
  struct mbuf *bp;

  bp = FUNC5(sizeof *head + data->length, MB_CBCPOUT);
  head = (struct cbcp_header *)FUNC1(bp);
  head->code = code;
  head->id = cbcp->fsm.id;
  head->length = FUNC2(sizeof *head + data->length);
  FUNC6(FUNC1(bp) + sizeof *head, data, data->length);
  FUNC4(LogDEBUG, "cbcp_Output", bp);
  FUNC3(&cbcp->p->link, bp, cbcp->p->dl->bundle,
                  FUNC0(&cbcp->p->link) - 1, PROTO_CBCP);
}