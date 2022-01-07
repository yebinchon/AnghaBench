
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;


 int OF_peer (int ) ;
 int openprom_node_search (int ,scalar_t__) ;

__attribute__((used)) static int
openprom_node_valid(phandle_t node)
{

 if (node == 0)
  return (0);
 return (openprom_node_search(OF_peer(0), node));
}
