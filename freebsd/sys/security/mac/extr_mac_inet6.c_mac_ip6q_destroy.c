
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6q {int * ip6q_label; } ;


 int mac_ip6q_label_free (int *) ;

void
mac_ip6q_destroy(struct ip6q *q6)
{

 if (q6->ip6q_label != ((void*)0)) {
  mac_ip6q_label_free(q6->ip6q_label);
  q6->ip6q_label = ((void*)0);
 }
}
