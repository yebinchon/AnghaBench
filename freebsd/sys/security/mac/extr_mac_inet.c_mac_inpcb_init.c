
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int * inp_label; } ;


 int ENOMEM ;
 int MPC_OBJECT_INPCB ;
 int * mac_inpcb_label_alloc (int) ;
 int mac_labeled ;

int
mac_inpcb_init(struct inpcb *inp, int flag)
{

 if (mac_labeled & MPC_OBJECT_INPCB) {
  inp->inp_label = mac_inpcb_label_alloc(flag);
  if (inp->inp_label == ((void*)0))
   return (ENOMEM);
 } else
  inp->inp_label = ((void*)0);
 return (0);
}
