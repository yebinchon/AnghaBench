
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct tty {int dummy; } ;
struct thread {int dummy; } ;
struct rp_port {int rp_channel; } ;
typedef int caddr_t ;


 int ENOIOCTL ;


 int sClrBreak (int *) ;
 int sSendBreak (int *) ;
 struct rp_port* tty_softc (struct tty*) ;

__attribute__((used)) static int
rpioctl(struct tty *tp, u_long cmd, caddr_t data, struct thread *td)
{
 struct rp_port *rp;

 rp = tty_softc(tp);
 switch (cmd) {
 case 128:
  sSendBreak(&rp->rp_channel);
  return (0);
 case 129:
  sClrBreak(&rp->rp_channel);
  return (0);
 default:
  return ENOIOCTL;
 }
}
