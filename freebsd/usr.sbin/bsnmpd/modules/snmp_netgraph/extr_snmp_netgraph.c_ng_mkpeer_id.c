
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngm_name {int name; int peerhook; int ourhook; int type; } ;
struct ngm_mkpeer {int name; int peerhook; int ourhook; int type; } ;
typedef int ng_ID_t ;
typedef int name ;
typedef int mkpeer ;


 int NGM_GENERIC_COOKIE ;
 int NGM_MKPEER ;
 int NGM_NAME ;
 int NG_HOOKSIZ ;
 int NG_PATHSIZ ;
 int NG_TYPESIZ ;
 int NgSendMsg (int ,char*,int ,int ,struct ngm_name*,int) ;
 int csock ;
 int ng_next_node_id_internal (int,int *,char const*,int ) ;
 int sprintf (char*,char*,int) ;
 int strcpy (int ,char const*) ;
 int strlcpy (int ,char const*,int ) ;

ng_ID_t
ng_mkpeer_id(ng_ID_t id, const char *nodename, const char *type,
    const char *hook, const char *peerhook)
{
 char path[NG_PATHSIZ];
 struct ngm_mkpeer mkpeer;
 struct ngm_name name;

 strlcpy(mkpeer.type, type, NG_TYPESIZ);
 strlcpy(mkpeer.ourhook, hook, NG_HOOKSIZ);
 strlcpy(mkpeer.peerhook, peerhook, NG_HOOKSIZ);

 sprintf(path, "[%x]:", id);
 if (NgSendMsg(csock, path, NGM_GENERIC_COOKIE, NGM_MKPEER,
     &mkpeer, sizeof(mkpeer)) == -1)
  return (0);

 if ((id = ng_next_node_id_internal(id, ((void*)0), hook, 0)) == 0)
  return (0);

 if (nodename != ((void*)0)) {
  strcpy(name.name, nodename);
  sprintf(path, "[%x]:", id);
  if (NgSendMsg(csock, path, NGM_GENERIC_COOKIE, NGM_NAME,
      &name, sizeof(name)) == -1)
   return (0);
 }
 return (id);
}
