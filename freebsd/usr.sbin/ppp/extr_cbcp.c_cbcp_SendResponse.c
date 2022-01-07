
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cbcp_data {scalar_t__ type; char* addr_start; int length; int delay; } ;
struct cbcp_addr {char* addr; int type; } ;
struct TYPE_6__ {scalar_t__ type; int delay; int restart; scalar_t__* phone; int state; int id; } ;
struct cbcp {TYPE_3__ fsm; TYPE_2__* p; } ;
struct TYPE_5__ {TYPE_1__* dl; } ;
struct TYPE_4__ {int name; } ;


 int CBCP_ADDR_PSTN ;
 scalar_t__ CBCP_NONUM ;
 int CBCP_RESPONSE ;
 int CBCP_RESPSENT ;
 int LogCBCP ;
 int cbcp_NewPhase (struct cbcp*,int ) ;
 int cbcp_Output (struct cbcp*,int ,struct cbcp_data*) ;
 int cbcp_StartTimer (struct cbcp*,int ) ;
 int cbcp_data_Show (struct cbcp_data*) ;
 int cbcpstate (int ) ;
 int log_Printf (int ,char*,int ,int ,int ) ;
 int strlen (char*) ;
 int strncpy (char*,scalar_t__*,int) ;

__attribute__((used)) static void
cbcp_SendResponse(struct cbcp *cbcp)
{
  struct cbcp_data data;
  struct cbcp_addr *addr;



  log_Printf(LogCBCP, "%s: SendResponse(%d) state = %s\n", cbcp->p->dl->name,
             cbcp->fsm.id, cbcpstate(cbcp->fsm.state));

  data.type = cbcp->fsm.type;
  data.delay = cbcp->fsm.delay;
  addr = (struct cbcp_addr *)data.addr_start;
  if (data.type == CBCP_NONUM)
    data.length = (char *)&data.delay - (char *)&data;
  else if (*cbcp->fsm.phone) {
    addr->type = CBCP_ADDR_PSTN;
    strncpy(addr->addr, cbcp->fsm.phone, sizeof addr->addr - 1);
    addr->addr[sizeof addr->addr - 1] = '\0';
    data.length = (addr->addr + strlen(addr->addr) + 1) - (char *)&data;
  } else
    data.length = data.addr_start - (char *)&data;

  cbcp_data_Show(&data);
  cbcp_Output(cbcp, CBCP_RESPONSE, &data);
  cbcp->fsm.restart--;
  cbcp_StartTimer(cbcp, cbcp->fsm.delay);
  cbcp_NewPhase(cbcp, CBCP_RESPSENT);
}
