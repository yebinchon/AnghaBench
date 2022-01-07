
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipq {int * ipq_label; } ;


 int ENOMEM ;
 int MPC_OBJECT_IPQ ;
 int * mac_ipq_label_alloc (int) ;
 int mac_labeled ;

int
mac_ipq_init(struct ipq *q, int flag)
{

 if (mac_labeled & MPC_OBJECT_IPQ) {
  q->ipq_label = mac_ipq_label_alloc(flag);
  if (q->ipq_label == ((void*)0))
   return (ENOMEM);
 } else
  q->ipq_label = ((void*)0);
 return (0);
}
