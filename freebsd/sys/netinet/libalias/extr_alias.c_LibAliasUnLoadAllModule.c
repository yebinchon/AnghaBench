
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_handler {int dummy; } ;
struct dll {int handle; } ;


 int LibAliasDetachHandlers (struct proto_handler*) ;
 int dlclose (int ) ;
 struct proto_handler* first_handler () ;
 int free (struct dll*) ;
 struct dll* walk_dll_chain () ;

int
LibAliasUnLoadAllModule(void)
{
 struct dll *t;
 struct proto_handler *p;


 while ((p = first_handler()) != ((void*)0)) {
  LibAliasDetachHandlers(p);
 }
 while ((t = walk_dll_chain()) != ((void*)0)) {
  dlclose(t->handle);
  free(t);
 }
 return (1);
}
