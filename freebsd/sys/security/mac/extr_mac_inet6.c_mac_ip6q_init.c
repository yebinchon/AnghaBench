
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6q {int * ip6q_label; } ;


 int ENOMEM ;
 int MPC_OBJECT_IP6Q ;
 int * mac_ip6q_label_alloc (int) ;
 int mac_labeled ;

int
mac_ip6q_init(struct ip6q *q6, int flag)
{

 if (mac_labeled & MPC_OBJECT_IP6Q) {
  q6->ip6q_label = mac_ip6q_label_alloc(flag);
  if (q6->ip6q_label == ((void*)0))
   return (ENOMEM);
 } else
  q6->ip6q_label = ((void*)0);
 return (0);
}
