
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int OFW_STATUS_LEN ;
 int OF_getprop (int ,char*,char*,int) ;
 int OF_getproplen (int ,char*) ;
 scalar_t__ bcmp (char*,char*,int) ;

int
ofw_bus_node_status_okay(phandle_t node)
{
 char status[OFW_STATUS_LEN];
 int len;

 len = OF_getproplen(node, "status");
 if (len <= 0)
  return (1);

 OF_getprop(node, "status", status, OFW_STATUS_LEN);
 if ((len == 5 && (bcmp(status, "okay", len) == 0)) ||
     (len == 3 && (bcmp(status, "ok", len))))
  return (1);

 return (0);
}
