
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscon {scalar_t__ ofw_node; int pdev; } ;


 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (scalar_t__) ;
 int SYSCON_INIT (struct syscon*) ;
 int SYSCON_TOPO_UNLOCK () ;
 int SYSCON_TOPO_XLOCK () ;
 int TAILQ_INSERT_TAIL (int *,struct syscon*,int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int printf (char*,int) ;
 int syscon_link ;
 int syscon_list ;

struct syscon *
syscon_register(struct syscon *syscon)
{
 int rv;
 rv = SYSCON_INIT(syscon);
 if (rv != 0) {
  printf("SYSCON_INIT failed: %d\n", rv);
  return (((void*)0));
 }





 SYSCON_TOPO_XLOCK();
 TAILQ_INSERT_TAIL(&syscon_list, syscon, syscon_link);
 SYSCON_TOPO_UNLOCK();
 return (syscon);
}
