
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 scalar_t__ OF_getencprop (int ,char*,int *,int) ;

phandle_t
ofw_graph_get_remote_endpoint(phandle_t endpoint)
{
 phandle_t remote;

 if (OF_getencprop(endpoint, "remote-endpoint", &remote,
       sizeof(phandle_t)) <= 0)
  return (0);

 return (remote);
}
