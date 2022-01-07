
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int name ;


 int OF_child (int) ;
 int OF_getprop (int,char*,char*,int) ;
 int OF_peer (int) ;
 int bzero (char*,int) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static phandle_t
of_find_firstchild_byname(phandle_t node, const char *req_name)
{
 char name[32];
 phandle_t n;

 for (n = OF_child(node); n != -1; n = OF_peer(n)) {
  bzero(name, sizeof(name));
  OF_getprop(n, "name", name, sizeof(name));

  if (strcmp(name, req_name) == 0)
   return (n);
 }

 return (-1);
}
