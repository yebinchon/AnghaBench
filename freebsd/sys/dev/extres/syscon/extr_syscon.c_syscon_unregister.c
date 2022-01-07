
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscon {int ofw_node; } ;


 int OF_device_register_xref (int ,int *) ;
 int OF_xref_from_node (int ) ;
 int SYSCON_TOPO_UNLOCK () ;
 int SYSCON_TOPO_XLOCK () ;
 int SYSCON_UNINIT (struct syscon*) ;
 int TAILQ_REMOVE (int *,struct syscon*,int ) ;
 int syscon_link ;
 int syscon_list ;

int
syscon_unregister(struct syscon *syscon)
{

 SYSCON_TOPO_XLOCK();
 TAILQ_REMOVE(&syscon_list, syscon, syscon_link);
 SYSCON_TOPO_UNLOCK();



 return (SYSCON_UNINIT(syscon));
}
