
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw {struct ip_fw* next; } ;


 int ipfw_free_rule (struct ip_fw*) ;

void
ipfw_reap_rules(struct ip_fw *head)
{
 struct ip_fw *rule;

 while ((rule = head) != ((void*)0)) {
  head = head->next;
  ipfw_free_rule(rule);
 }
}
