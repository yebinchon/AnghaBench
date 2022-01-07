
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct if_clone {int ifc_destroy; int ifc_create; int ifc_match; int ifc_type; } ;
typedef int ifc_match_t ;
typedef int ifc_destroy_t ;
typedef int ifc_create_t ;


 int ADVANCED ;
 int EVENTHANDLER_INVOKE (int ,struct if_clone*) ;
 struct if_clone* if_clone_alloc (char const*,int ) ;
 scalar_t__ if_clone_attach (struct if_clone*) ;
 int if_clone_event ;

struct if_clone *
if_clone_advanced(const char *name, u_int maxunit, ifc_match_t match,
 ifc_create_t create, ifc_destroy_t destroy)
{
 struct if_clone *ifc;

 ifc = if_clone_alloc(name, maxunit);
 ifc->ifc_type = ADVANCED;
 ifc->ifc_match = match;
 ifc->ifc_create = create;
 ifc->ifc_destroy = destroy;

 if (if_clone_attach(ifc) != 0)
  return (((void*)0));

 EVENTHANDLER_INVOKE(if_clone_event, ifc);

 return (ifc);
}
