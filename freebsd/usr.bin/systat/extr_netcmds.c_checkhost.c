
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ s_addr; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct in_conninfo {TYPE_3__ inc_faddr; TYPE_1__ inc_laddr; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct hitem {int onoff; TYPE_2__ addr; } ;


 struct hitem* hosts ;
 int nhosts ;

int
checkhost(struct in_conninfo *inc)
{
 struct hitem *p;

 if (hosts)
 for (p = hosts; p < hosts+nhosts; p++)
  if (p->addr.s_addr == inc->inc_laddr.s_addr ||
      p->addr.s_addr == inc->inc_faddr.s_addr)
   return (p->onoff);
 return (1);
}
