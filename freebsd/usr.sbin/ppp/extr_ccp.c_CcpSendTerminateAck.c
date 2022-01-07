
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct fsm {int dummy; } ;


 int CODE_TERMACK ;
 int MB_CCPOUT ;
 int fsm_Output (struct fsm*,int ,int ,int *,int ,int ) ;

__attribute__((used)) static void
CcpSendTerminateAck(struct fsm *fp, u_char id)
{

  fsm_Output(fp, CODE_TERMACK, id, ((void*)0), 0, MB_CCPOUT);
}
