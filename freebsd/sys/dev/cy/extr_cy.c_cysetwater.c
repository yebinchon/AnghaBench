
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tty {int t_ififosize; int t_ispeedwat; int t_ospeedwat; } ;
struct com_s {int ibufsize; scalar_t__ ibufold; scalar_t__ ibuf; scalar_t__ iptr; int ierroff; int * ihighwater; int * ibufend; struct tty* tp; } ;
typedef int speed_t ;


 int COM_LOCK () ;
 int COM_UNLOCK () ;
 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int critical_enter () ;
 int critical_exit () ;
 int cyinput (struct com_s*) ;
 int hz ;
 int * malloc (int,int ,int ) ;

__attribute__((used)) static int
cysetwater(struct com_s *com, speed_t speed)
{
 int cp4ticks;
 u_char *ibuf;
 int ibufsize;
 struct tty *tp;







 cp4ticks = speed / 10 / hz * 4;
 for (ibufsize = 128; ibufsize < cp4ticks;)
  ibufsize <<= 1;
 if (ibufsize == com->ibufsize) {
  return (0);
 }





 ibuf = malloc(2 * ibufsize, M_DEVBUF, M_NOWAIT);
 if (ibuf == ((void*)0)) {
  return (ENOMEM);
 }


 com->ibufold = com->ibuf;
 com->ibufsize = ibufsize;
 tp = com->tp;
 if (tp != ((void*)0)) {
  tp->t_ififosize = 2 * ibufsize;
  tp->t_ispeedwat = (speed_t)-1;
  tp->t_ospeedwat = (speed_t)-1;
 }





 critical_enter();
 COM_LOCK();
 if (com->iptr != com->ibuf)
  cyinput(com);
 com->iptr = com->ibuf = ibuf;
 com->ibufend = ibuf + ibufsize;
 com->ierroff = ibufsize;
 com->ihighwater = ibuf + 3 * ibufsize / 4;

 COM_UNLOCK();
 critical_exit();
 return (0);
}
