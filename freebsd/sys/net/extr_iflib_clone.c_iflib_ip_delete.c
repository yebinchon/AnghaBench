
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* if_pseudo_t ;
struct TYPE_4__ {scalar_t__ ip_on_list; } ;


 int LIST_REMOVE (TYPE_1__*,int ) ;
 int PSEUDO_LOCK () ;
 int PSEUDO_UNLOCK () ;
 int ip_list ;

__attribute__((used)) static void
iflib_ip_delete(if_pseudo_t ip)
{
 PSEUDO_LOCK();
 if (ip->ip_on_list) {
  LIST_REMOVE(ip, ip_list);
  ip->ip_on_list = 0;
 }
 PSEUDO_UNLOCK();
}
