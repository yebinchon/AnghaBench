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
struct cbcp_data {scalar_t__ type; char* addr_start; int length; int /*<<< orphan*/  delay; } ;
struct cbcp_addr {char* addr; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  delay; int /*<<< orphan*/  restart; scalar_t__* phone; int /*<<< orphan*/  state; int /*<<< orphan*/  id; } ;
struct cbcp {TYPE_3__ fsm; TYPE_2__* p; } ;
struct TYPE_5__ {TYPE_1__* dl; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CBCP_ADDR_PSTN ; 
 scalar_t__ CBCP_NONUM ; 
 int /*<<< orphan*/  CBCP_RESPONSE ; 
 int /*<<< orphan*/  CBCP_RESPSENT ; 
 int /*<<< orphan*/  LogCBCP ; 
 int /*<<< orphan*/  FUNC0 (struct cbcp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cbcp*,int /*<<< orphan*/ ,struct cbcp_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct cbcp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cbcp_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__*,int) ; 

__attribute__((used)) static void
FUNC8(struct cbcp *cbcp)
{
  struct cbcp_data data;
  struct cbcp_addr *addr;

  /* Only callers send RESPONSEs */

  FUNC5(LogCBCP, "%s: SendResponse(%d) state = %s\n", cbcp->p->dl->name,
             cbcp->fsm.id, FUNC4(cbcp->fsm.state));

  data.type = cbcp->fsm.type;
  data.delay = cbcp->fsm.delay;
  addr = (struct cbcp_addr *)data.addr_start;
  if (data.type == CBCP_NONUM)
    data.length = (char *)&data.delay - (char *)&data;
  else if (*cbcp->fsm.phone) {
    addr->type = CBCP_ADDR_PSTN;
    FUNC7(addr->addr, cbcp->fsm.phone, sizeof addr->addr - 1);
    addr->addr[sizeof addr->addr - 1] = '\0';
    data.length = (addr->addr + FUNC6(addr->addr) + 1) - (char *)&data;
  } else
    data.length = data.addr_start - (char *)&data;

  FUNC3(&data);
  FUNC1(cbcp, CBCP_RESPONSE, &data);
  cbcp->fsm.restart--;
  FUNC2(cbcp, cbcp->fsm.delay);
  FUNC0(cbcp, CBCP_RESPSENT);	/* Wait for an ACK */
}