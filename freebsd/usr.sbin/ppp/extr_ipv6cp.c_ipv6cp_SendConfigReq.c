
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct physical {int dummy; } ;
struct ipv6cp {int my_ifid; } ;
struct fsm_opt {int data; } ;
struct fsm {int reqid; int link; } ;


 int CODE_CONFIGREQ ;
 int INC_FSM_OPT (int ,int,struct fsm_opt*) ;
 int IPV6CP_IFIDLEN ;
 int MB_IPV6CPOUT ;
 int REJECTED (struct ipv6cp*,int ) ;
 int TY_TOKEN ;
 struct ipv6cp* fsm2ipv6cp (struct fsm*) ;
 int fsm_Output (struct fsm*,int ,int ,int *,int,int ) ;
 struct physical* link2physical (int ) ;
 int memcpy (int ,int ,int) ;
 int physical_IsSync (struct physical*) ;

__attribute__((used)) static void
ipv6cp_SendConfigReq(struct fsm *fp)
{

  struct physical *p = link2physical(fp->link);
  struct ipv6cp *ipv6cp = fsm2ipv6cp(fp);
  u_char buff[IPV6CP_IFIDLEN+2];
  struct fsm_opt *o;

  o = (struct fsm_opt *)buff;

  if ((p && !physical_IsSync(p)) || !REJECTED(ipv6cp, TY_TOKEN)) {
    memcpy(o->data, ipv6cp->my_ifid, IPV6CP_IFIDLEN);
    INC_FSM_OPT(TY_TOKEN, IPV6CP_IFIDLEN + 2, o);
  }

  fsm_Output(fp, CODE_CONFIGREQ, fp->reqid, buff, (u_char *)o - buff,
             MB_IPV6CPOUT);
}
