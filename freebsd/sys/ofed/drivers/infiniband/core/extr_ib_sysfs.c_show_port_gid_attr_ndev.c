
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_attribute {int dummy; } ;
struct ib_port {int dummy; } ;
typedef int ssize_t ;


 int _show_port_gid_attr (struct ib_port*,struct port_attribute*,char*,int ) ;
 int print_ndev ;

__attribute__((used)) static ssize_t show_port_gid_attr_ndev(struct ib_port *p,
           struct port_attribute *attr, char *buf)
{
 return _show_port_gid_attr(p, attr, buf, print_ndev);
}
