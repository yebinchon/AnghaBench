
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct auth_portal {int dummy; } ;
struct auth_name {int dummy; } ;
struct auth_group {int dummy; } ;
struct TYPE_13__ {int conf_default_ag_defined; } ;


 scalar_t__ UCL_ARRAY ;
 struct auth_group* auth_group_find (TYPE_9__*,char const*) ;
 struct auth_group* auth_group_new (TYPE_9__*,char const*) ;
 int auth_group_set_type (struct auth_group*,char const*) ;
 struct auth_name* auth_name_new (struct auth_group*,char const*) ;
 struct auth_portal* auth_portal_new (struct auth_group*,char const*) ;
 TYPE_9__* conf ;
 int log_warnx (char*,char const*) ;
 int strcmp (char const*,char*) ;
 TYPE_1__* ucl_iterate_object (TYPE_1__ const*,int **,int) ;
 char* ucl_object_key (TYPE_1__ const*) ;
 char* ucl_object_tostring (TYPE_1__ const*) ;
 scalar_t__ uclparse_chap (struct auth_group*,TYPE_1__ const*) ;
 scalar_t__ uclparse_chap_mutual (struct auth_group*,TYPE_1__ const*) ;

__attribute__((used)) static int
uclparse_auth_group(const char *name, const ucl_object_t *top)
{
 struct auth_group *auth_group;
 const struct auth_name *an;
 const struct auth_portal *ap;
 ucl_object_iter_t it = ((void*)0), it2 = ((void*)0);
 const ucl_object_t *obj = ((void*)0), *tmp = ((void*)0);
 const char *key;
 int err;

 if (!strcmp(name, "default") &&
     conf->conf_default_ag_defined == 0) {
  auth_group = auth_group_find(conf, name);
  conf->conf_default_ag_defined = 1;
 } else {
  auth_group = auth_group_new(conf, name);
 }

 if (auth_group == ((void*)0))
  return (1);

 while ((obj = ucl_iterate_object(top, &it, 1))) {
  key = ucl_object_key(obj);

  if (!strcmp(key, "auth-type")) {
   const char *value = ucl_object_tostring(obj);

   err = auth_group_set_type(auth_group, value);
   if (err)
    return (1);
  }

  if (!strcmp(key, "chap")) {
   if (obj->type != UCL_ARRAY) {
    log_warnx("\"chap\" property of "
        "auth-group \"%s\" is not an array",
        name);
    return (1);
   }

   it2 = ((void*)0);
   while ((tmp = ucl_iterate_object(obj, &it2, 1))) {
    if (uclparse_chap(auth_group, tmp) != 0)
     return (1);
   }
  }

  if (!strcmp(key, "chap-mutual")) {
   if (obj->type != UCL_ARRAY) {
    log_warnx("\"chap-mutual\" property of "
        "auth-group \"%s\" is not an array",
        name);
    return (1);
   }

   it2 = ((void*)0);
   while ((tmp = ucl_iterate_object(obj, &it2, 1))) {
    if (uclparse_chap_mutual(auth_group, tmp) != 0)
     return (1);
   }
  }

  if (!strcmp(key, "initiator-name")) {
   if (obj->type != UCL_ARRAY) {
    log_warnx("\"initiator-name\" property of "
        "auth-group \"%s\" is not an array",
        name);
    return (1);
   }

   it2 = ((void*)0);
   while ((tmp = ucl_iterate_object(obj, &it2, 1))) {
    const char *value = ucl_object_tostring(tmp);

    an = auth_name_new(auth_group, value);
    if (an == ((void*)0))
     return (1);
   }
  }

  if (!strcmp(key, "initiator-portal")) {
   if (obj->type != UCL_ARRAY) {
    log_warnx("\"initiator-portal\" property of "
        "auth-group \"%s\" is not an array",
        name);
    return (1);
   }

   it2 = ((void*)0);
   while ((tmp = ucl_iterate_object(obj, &it2, 1))) {
    const char *value = ucl_object_tostring(tmp);

    ap = auth_portal_new(auth_group, value);
    if (ap == ((void*)0))
     return (1);
   }
  }
 }

 return (0);
}
