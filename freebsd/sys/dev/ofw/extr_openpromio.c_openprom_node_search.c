
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int EINVAL ;
 int OF_child (int) ;
 int OF_peer (int) ;

__attribute__((used)) static int
openprom_node_search(phandle_t root, phandle_t node)
{
 phandle_t child;

 if (root == node)
  return (0);
 for (child = OF_child(root); child != 0 && child != -1;
     child = OF_peer(child))
  if (openprom_node_search(child, node) == 0)
   return (0);
 return (EINVAL);
}
