
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct portal_group {int pg_options; int pg_name; int * pg_discovery_auth_group; } ;
struct TYPE_13__ {int conf_default_pg_defined; } ;


 scalar_t__ UCL_ARRAY ;
 scalar_t__ UCL_OBJECT ;
 scalar_t__ UCL_STRING ;
 int * auth_group_find (TYPE_8__*,int ) ;
 TYPE_8__* conf ;
 int log_warnx (char*,int ,...) ;
 int option_new (int *,char*,int ) ;
 scalar_t__ portal_group_add_listen (struct portal_group*,int ,int) ;
 struct portal_group* portal_group_find (TYPE_8__*,char const*) ;
 struct portal_group* portal_group_new (TYPE_8__*,char const*) ;
 scalar_t__ portal_group_set_filter (struct portal_group*,int ) ;
 scalar_t__ portal_group_set_redirection (struct portal_group*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 TYPE_1__* ucl_iterate_object (TYPE_1__ const*,int **,int) ;
 char* ucl_object_key (TYPE_1__ const*) ;
 int ucl_object_tostring (TYPE_1__ const*) ;
 int ucl_object_tostring_forced (TYPE_1__ const*) ;

__attribute__((used)) static int
uclparse_portal_group(const char *name, const ucl_object_t *top)
{
 struct portal_group *portal_group;
 ucl_object_iter_t it = ((void*)0), it2 = ((void*)0);
 const ucl_object_t *obj = ((void*)0), *tmp = ((void*)0);
 const char *key;

 if (strcmp(name, "default") == 0 &&
     conf->conf_default_pg_defined == 0) {
  portal_group = portal_group_find(conf, name);
  conf->conf_default_pg_defined = 1;
 } else {
  portal_group = portal_group_new(conf, name);
 }

 if (portal_group == ((void*)0))
  return (1);

 while ((obj = ucl_iterate_object(top, &it, 1))) {
  key = ucl_object_key(obj);

  if (!strcmp(key, "discovery-auth-group")) {
   portal_group->pg_discovery_auth_group =
       auth_group_find(conf, ucl_object_tostring(obj));
   if (portal_group->pg_discovery_auth_group == ((void*)0)) {
    log_warnx("unknown discovery-auth-group \"%s\" "
        "for portal-group \"%s\"",
        ucl_object_tostring(obj),
        portal_group->pg_name);
    return (1);
   }
  }

  if (!strcmp(key, "discovery-filter")) {
   if (obj->type != UCL_STRING) {
    log_warnx("\"discovery-filter\" property of "
        "portal-group \"%s\" is not a string",
        portal_group->pg_name);
    return (1);
   }

   if (portal_group_set_filter(portal_group,
       ucl_object_tostring(obj)) != 0)
    return (1);
  }

  if (!strcmp(key, "listen")) {
   if (obj->type == UCL_STRING) {
    if (portal_group_add_listen(portal_group,
        ucl_object_tostring(obj), 0) != 0)
     return (1);
   } else if (obj->type == UCL_ARRAY) {
    while ((tmp = ucl_iterate_object(obj, &it2,
        1))) {
     if (portal_group_add_listen(
         portal_group,
         ucl_object_tostring(tmp),
         0) != 0)
      return (1);
    }
   } else {
    log_warnx("\"listen\" property of "
        "portal-group \"%s\" is not a string",
        portal_group->pg_name);
    return (1);
   }
  }

  if (!strcmp(key, "listen-iser")) {
   if (obj->type == UCL_STRING) {
    if (portal_group_add_listen(portal_group,
        ucl_object_tostring(obj), 1) != 0)
     return (1);
   } else if (obj->type == UCL_ARRAY) {
    while ((tmp = ucl_iterate_object(obj, &it2,
        1))) {
     if (portal_group_add_listen(
         portal_group,
         ucl_object_tostring(tmp),
         1) != 0)
      return (1);
    }
   } else {
    log_warnx("\"listen\" property of "
        "portal-group \"%s\" is not a string",
        portal_group->pg_name);
    return (1);
   }
  }

  if (!strcmp(key, "redirect")) {
   if (obj->type != UCL_STRING) {
    log_warnx("\"listen\" property of "
        "portal-group \"%s\" is not a string",
        portal_group->pg_name);
    return (1);
   }

   if (portal_group_set_redirection(portal_group,
       ucl_object_tostring(obj)) != 0)
    return (1);
  }

  if (!strcmp(key, "options")) {
   if (obj->type != UCL_OBJECT) {
    log_warnx("\"options\" property of portal group "
        "\"%s\" is not an object", portal_group->pg_name);
    return (1);
   }

   while ((tmp = ucl_iterate_object(obj, &it2,
       1))) {
    option_new(&portal_group->pg_options,
        ucl_object_key(tmp),
        ucl_object_tostring_forced(tmp));
   }
  }
 }

 return (0);
}
