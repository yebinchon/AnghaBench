
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct lun {int l_name; int l_options; } ;


 scalar_t__ UCL_INT ;
 scalar_t__ UCL_OBJECT ;
 scalar_t__ UCL_STRING ;
 int conf ;
 int log_warnx (char*,int ) ;
 struct lun* lun_new (int ,char const*) ;
 int lun_set_backend (struct lun*,int ) ;
 int lun_set_blocksize (struct lun*,int ) ;
 int lun_set_device_id (struct lun*,int ) ;
 int lun_set_path (struct lun*,int ) ;
 int lun_set_serial (struct lun*,int ) ;
 int lun_set_size (struct lun*,int ) ;
 int option_new (int *,char*,int ) ;
 int strcmp (char const*,char*) ;
 TYPE_1__* ucl_iterate_object (TYPE_1__ const*,int **,int) ;
 char* ucl_object_key (TYPE_1__ const*) ;
 int ucl_object_toint (TYPE_1__ const*) ;
 int ucl_object_tostring (TYPE_1__ const*) ;
 int ucl_object_tostring_forced (TYPE_1__ const*) ;

__attribute__((used)) static int
uclparse_lun(const char *name, const ucl_object_t *top)
{
 struct lun *lun;
 ucl_object_iter_t it = ((void*)0), child_it = ((void*)0);
 const ucl_object_t *obj = ((void*)0), *child = ((void*)0);
 const char *key;

 lun = lun_new(conf, name);
 if (lun == ((void*)0))
  return (1);

 while ((obj = ucl_iterate_object(top, &it, 1))) {
  key = ucl_object_key(obj);

  if (!strcmp(key, "backend")) {
   if (obj->type != UCL_STRING) {
    log_warnx("\"backend\" property of lun "
        "\"%s\" is not a string",
        lun->l_name);
    return (1);
   }

   lun_set_backend(lun, ucl_object_tostring(obj));
  }

  if (!strcmp(key, "blocksize")) {
   if (obj->type != UCL_INT) {
    log_warnx("\"blocksize\" property of lun "
        "\"%s\" is not an integer", lun->l_name);
    return (1);
   }

   lun_set_blocksize(lun, ucl_object_toint(obj));
  }

  if (!strcmp(key, "device-id")) {
   if (obj->type != UCL_STRING) {
    log_warnx("\"device-id\" property of lun "
        "\"%s\" is not an integer", lun->l_name);
    return (1);
   }

   lun_set_device_id(lun, ucl_object_tostring(obj));
  }

  if (!strcmp(key, "options")) {
   if (obj->type != UCL_OBJECT) {
    log_warnx("\"options\" property of lun "
        "\"%s\" is not an object", lun->l_name);
    return (1);
   }

   while ((child = ucl_iterate_object(obj, &child_it,
       1))) {
    option_new(&lun->l_options,
        ucl_object_key(child),
        ucl_object_tostring_forced(child));
   }
  }

  if (!strcmp(key, "path")) {
   if (obj->type != UCL_STRING) {
    log_warnx("\"path\" property of lun "
        "\"%s\" is not a string", lun->l_name);
    return (1);
   }

   lun_set_path(lun, ucl_object_tostring(obj));
  }

  if (!strcmp(key, "serial")) {
   if (obj->type != UCL_STRING) {
    log_warnx("\"serial\" property of lun "
        "\"%s\" is not a string", lun->l_name);
    return (1);
   }

   lun_set_serial(lun, ucl_object_tostring(obj));
  }

  if (!strcmp(key, "size")) {
   if (obj->type != UCL_INT) {
    log_warnx("\"size\" property of lun "
        "\"%s\" is not an integer", lun->l_name);
    return (1);
   }

   lun_set_size(lun, ucl_object_toint(obj));
  }
 }

 return (0);
}
