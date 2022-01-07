
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int in_addr_t ;
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ v_lcl_addr; } ;


 int INADDR_ANY ;
 int VIF_LOCK () ;
 int VIF_UNLOCK () ;
 int V_numvifs ;
 TYPE_2__* V_viftable ;

__attribute__((used)) static u_long
X_ip_mcast_src(int vifi)
{
 in_addr_t addr;

 addr = INADDR_ANY;
 if (vifi < 0)
  return (addr);

 VIF_LOCK();
 if (vifi < V_numvifs)
  addr = V_viftable[vifi].v_lcl_addr.s_addr;
 VIF_UNLOCK();

 return (addr);
}
