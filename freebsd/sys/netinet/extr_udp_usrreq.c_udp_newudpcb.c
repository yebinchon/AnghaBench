
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udpcb {int dummy; } ;
struct inpcb {struct udpcb* inp_ppcb; } ;


 int ENOBUFS ;
 int M_NOWAIT ;
 int M_ZERO ;
 int V_udpcb_zone ;
 struct udpcb* uma_zalloc (int ,int) ;

int
udp_newudpcb(struct inpcb *inp)
{
 struct udpcb *up;

 up = uma_zalloc(V_udpcb_zone, M_NOWAIT | M_ZERO);
 if (up == ((void*)0))
  return (ENOBUFS);
 inp->inp_ppcb = up;
 return (0);
}
