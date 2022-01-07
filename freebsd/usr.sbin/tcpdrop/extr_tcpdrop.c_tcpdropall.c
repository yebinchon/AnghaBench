
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xinpcb {scalar_t__ inp_gencnt; int inp_inc; } ;
struct xtcpcb {int t_state; int xt_stack; struct xinpcb xt_inp; } ;
struct xinpgen {int xig_len; scalar_t__ xig_gen; } ;


 int TCPS_LISTEN ;
 int TCP_FUNCTION_NAME_LEN_MAX ;
 struct xinpgen* XINP_NEXT (struct xinpgen*) ;
 int free (struct xinpgen*) ;
 struct xinpgen* getxpcblist (char*) ;
 scalar_t__ strncmp (int ,char const*,int ) ;
 int tcpdropconn (int *) ;

__attribute__((used)) static bool
tcpdropall(const char *stack, int state)
{
 struct xinpgen *head, *xinp;
 struct xtcpcb *xtp;
 struct xinpcb *xip;
 bool ok;

 ok = 1;

 head = getxpcblist("net.inet.tcp.pcblist");




 for (xinp = ((struct xinpgen *)(uintptr_t)((uintptr_t)(head) + (head)->xig_len)); xinp->xig_len > sizeof *xinp;
     xinp = ((struct xinpgen *)(uintptr_t)((uintptr_t)(xinp) + (xinp)->xig_len))) {
  xtp = (struct xtcpcb *)xinp;
  xip = &xtp->xt_inp;







  if (xip->inp_gencnt > head->xig_gen)
   continue;


  if (xtp->t_state == TCPS_LISTEN)
   continue;


  if ((state != -1) && (xtp->t_state != state))
   continue;


  if (stack[0] != '\0' &&
      strncmp(xtp->xt_stack, stack, TCP_FUNCTION_NAME_LEN_MAX))
   continue;

  if (!tcpdropconn(&xip->inp_inc))
   ok = 0;
 }
 free(head);

 return (ok);
}
