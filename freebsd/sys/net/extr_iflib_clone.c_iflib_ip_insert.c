
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* if_pseudo_t ;
struct TYPE_4__ {int ip_on_list; } ;


 int LIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int PSEUDO_LOCK () ;
 int PSEUDO_UNLOCK () ;
 int iflib_pseudos ;
 int ip_list ;

__attribute__((used)) static void
iflib_ip_insert(if_pseudo_t ip)
{
 PSEUDO_LOCK();
 if (!ip->ip_on_list) {
  LIST_INSERT_HEAD(&iflib_pseudos, ip, ip_list);
  ip->ip_on_list = 1;
 }
 PSEUDO_UNLOCK();
}
