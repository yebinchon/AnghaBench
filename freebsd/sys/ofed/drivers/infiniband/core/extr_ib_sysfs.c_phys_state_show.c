
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_attribute {int dummy; } ;
struct ib_port_attr {int phys_state; } ;
struct ib_port {int port_num; int ibdev; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ ib_query_port (int ,int ,struct ib_port_attr*) ;
 scalar_t__ sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t phys_state_show(struct ib_port *p, struct port_attribute *unused,
          char *buf)
{
 struct ib_port_attr attr;

 ssize_t ret;

 ret = ib_query_port(p->ibdev, p->port_num, &attr);
 if (ret)
  return ret;

 switch (attr.phys_state) {
 case 1: return sprintf(buf, "1: Sleep\n");
 case 2: return sprintf(buf, "2: Polling\n");
 case 3: return sprintf(buf, "3: Disabled\n");
 case 4: return sprintf(buf, "4: PortConfigurationTraining\n");
 case 5: return sprintf(buf, "5: LinkUp\n");
 case 6: return sprintf(buf, "6: LinkErrorRecovery\n");
 case 7: return sprintf(buf, "7: Phy Test\n");
 default: return sprintf(buf, "%d: <unknown>\n", attr.phys_state);
 }
}
