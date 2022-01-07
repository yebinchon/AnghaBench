
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;






 struct rman drq_rman ;
 struct rman irq_rman ;
 struct rman mem_rman ;
 struct rman port_rman ;

__attribute__((used)) static struct rman *
nexus_rman(int type)
{
 switch (type) {
 case 129:
  return (&irq_rman);
 case 131:
  return (&drq_rman);
 case 130:
  return (&port_rman);
 case 128:
  return (&mem_rman);
 default:
  return (((void*)0));
 }
}
