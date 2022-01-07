
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipq {int * ipq_label; } ;


 int mac_ipq_label_free (int *) ;

void
mac_ipq_destroy(struct ipq *q)
{

 if (q->ipq_label != ((void*)0)) {
  mac_ipq_label_free(q->ipq_label);
  q->ipq_label = ((void*)0);
 }
}
