
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct TYPE_15__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct TYPE_14__ {void* conf_timeout; int conf_pidfile_path; void* conf_maxproc; void* conf_debug; } ;


 scalar_t__ UCL_ARRAY ;
 scalar_t__ UCL_INT ;
 scalar_t__ UCL_OBJECT ;
 scalar_t__ UCL_STRING ;
 TYPE_12__* conf ;
 int isns_new (TYPE_12__*,int ) ;
 int log_warnx (char*) ;
 int strcmp (char const*,char*) ;
 int strdup (int ) ;
 TYPE_1__* ucl_iterate_object (TYPE_1__ const*,int **,int) ;
 char* ucl_object_key (TYPE_1__ const*) ;
 void* ucl_object_toint (TYPE_1__ const*) ;
 int ucl_object_tostring (TYPE_1__ const*) ;
 int uclparse_auth_group (char*,TYPE_1__ const*) ;
 int uclparse_lun (char*,TYPE_1__ const*) ;
 int uclparse_portal_group (char*,TYPE_1__ const*) ;
 int uclparse_target (char*,TYPE_1__ const*) ;

__attribute__((used)) static int
uclparse_toplevel(const ucl_object_t *top)
{
 ucl_object_iter_t it = ((void*)0), iter = ((void*)0);
 const ucl_object_t *obj = ((void*)0), *child = ((void*)0);
 int err = 0;


 while ((obj = ucl_iterate_object(top, &it, 1))) {
  const char *key = ucl_object_key(obj);

  if (!strcmp(key, "debug")) {
   if (obj->type == UCL_INT)
    conf->conf_debug = ucl_object_toint(obj);
   else {
    log_warnx("\"debug\" property value is not integer");
    return (1);
   }
  }

  if (!strcmp(key, "timeout")) {
   if (obj->type == UCL_INT)
    conf->conf_timeout = ucl_object_toint(obj);
   else {
    log_warnx("\"timeout\" property value is not integer");
    return (1);
   }
  }

  if (!strcmp(key, "maxproc")) {
   if (obj->type == UCL_INT)
    conf->conf_maxproc = ucl_object_toint(obj);
   else {
    log_warnx("\"maxproc\" property value is not integer");
    return (1);
   }
  }

  if (!strcmp(key, "pidfile")) {
   if (obj->type == UCL_STRING)
    conf->conf_pidfile_path = strdup(
        ucl_object_tostring(obj));
   else {
    log_warnx("\"pidfile\" property value is not string");
    return (1);
   }
  }

  if (!strcmp(key, "isns-server")) {
   if (obj->type == UCL_ARRAY) {
    iter = ((void*)0);
    while ((child = ucl_iterate_object(obj, &iter,
        1))) {
     if (child->type != UCL_STRING)
      return (1);

     err = isns_new(conf,
         ucl_object_tostring(child));
     if (err != 0) {
      return (1);
     }
    }
   } else {
    log_warnx("\"isns-server\" property value is "
        "not an array");
    return (1);
   }
  }

  if (!strcmp(key, "isns-period")) {
   if (obj->type == UCL_INT)
    conf->conf_timeout = ucl_object_toint(obj);
   else {
    log_warnx("\"isns-period\" property value is not integer");
    return (1);
   }
  }

  if (!strcmp(key, "isns-timeout")) {
   if (obj->type == UCL_INT)
    conf->conf_timeout = ucl_object_toint(obj);
   else {
    log_warnx("\"isns-timeout\" property value is not integer");
    return (1);
   }
  }

  if (!strcmp(key, "auth-group")) {
   if (obj->type == UCL_OBJECT) {
    iter = ((void*)0);
    while ((child = ucl_iterate_object(obj, &iter, 1))) {
     uclparse_auth_group(ucl_object_key(child), child);
    }
   } else {
    log_warnx("\"auth-group\" section is not an object");
    return (1);
   }
  }

  if (!strcmp(key, "portal-group")) {
   if (obj->type == UCL_OBJECT) {
    iter = ((void*)0);
    while ((child = ucl_iterate_object(obj, &iter, 1))) {
     uclparse_portal_group(ucl_object_key(child), child);
    }
   } else {
    log_warnx("\"portal-group\" section is not an object");
    return (1);
   }
  }

  if (!strcmp(key, "lun")) {
   if (obj->type == UCL_OBJECT) {
    iter = ((void*)0);
    while ((child = ucl_iterate_object(obj, &iter, 1))) {
     uclparse_lun(ucl_object_key(child), child);
    }
   } else {
    log_warnx("\"lun\" section is not an object");
    return (1);
   }
  }
 }


 it = ((void*)0);
 while ((obj = ucl_iterate_object(top, &it, 1))) {
  const char *key = ucl_object_key(obj);

  if (!strcmp(key, "target")) {
   if (obj->type == UCL_OBJECT) {
    iter = ((void*)0);
    while ((child = ucl_iterate_object(obj, &iter,
        1))) {
     uclparse_target(ucl_object_key(child),
         child);
    }
   } else {
    log_warnx("\"target\" section is not an object");
    return (1);
   }
  }
 }

 return (0);
}
