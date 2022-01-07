
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6cp {scalar_t__ my_reject; scalar_t__ his_reject; int hisaddr; int myaddr; } ;


 int ncpaddr_init (int *) ;

void
ipv6cp_Setup(struct ipv6cp *ipv6cp)
{
  ncpaddr_init(&ipv6cp->myaddr);
  ncpaddr_init(&ipv6cp->hisaddr);

  ipv6cp->his_reject = 0;
  ipv6cp->my_reject = 0;
}
