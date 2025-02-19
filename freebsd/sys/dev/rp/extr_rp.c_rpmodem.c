
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_3__ {int* TxControl; } ;
struct rp_port {TYPE_1__ rp_channel; } ;


 int CD_ACT ;
 int CTS_ACT ;
 int DSR_ACT ;
 int SER_CTS ;
 int SER_DCD ;
 int SER_DSR ;
 int SER_DTR ;
 int SER_RTS ;
 int SET_DTR ;
 int SET_RTS ;
 int _INDX_ADDR ;
 int le32dec (int*) ;
 int rp_writech4 (TYPE_1__*,int ,int ) ;
 int sGetChanStatusLo (TYPE_1__*) ;
 struct rp_port* tty_softc (struct tty*) ;

__attribute__((used)) static int
rpmodem(struct tty *tp, int sigon, int sigoff)
{
 struct rp_port *rp;
 int i, j, k;

 rp = tty_softc(tp);
 if (sigon != 0 || sigoff != 0) {
  i = j = 0;
  if (sigon & SER_DTR)
   i = SET_DTR;
  if (sigoff & SER_DTR)
   j = SET_DTR;
  if (sigon & SER_RTS)
   i = SET_RTS;
  if (sigoff & SER_RTS)
   j = SET_RTS;
  rp->rp_channel.TxControl[3] &= ~i;
  rp->rp_channel.TxControl[3] |= j;
  rp_writech4(&rp->rp_channel,_INDX_ADDR,
   le32dec(rp->rp_channel.TxControl));
 } else {
  i = sGetChanStatusLo(&rp->rp_channel);
  j = rp->rp_channel.TxControl[3];
  k = 0;
  if (j & SET_DTR)
   k |= SER_DTR;
  if (j & SET_RTS)
   k |= SER_RTS;
  if (i & CD_ACT)
   k |= SER_DCD;
  if (i & DSR_ACT)
   k |= SER_DSR;
  if (i & CTS_ACT)
   k |= SER_CTS;
  return(k);
 }
 return (0);
}
