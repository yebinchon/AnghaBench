
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
struct target {struct lun** t_luns; int t_name; } ;
struct lun {int dummy; } ;


 size_t MAX_LUNS ;
 scalar_t__ UCL_INT ;
 scalar_t__ UCL_OBJECT ;
 scalar_t__ UCL_STRING ;
 int asprintf (char**,char*,int ,size_t) ;
 int conf ;
 int log_warnx (char*,size_t,...) ;
 struct lun* lun_find (int ,int ) ;
 struct lun* lun_new (int ,char*) ;
 int lun_set_scsiname (struct lun*,char*) ;
 TYPE_1__* ucl_object_find_key (TYPE_1__ const*,char*) ;
 size_t ucl_object_toint (TYPE_1__ const*) ;
 int ucl_object_tostring (TYPE_1__ const*) ;

__attribute__((used)) static int
uclparse_target_lun(struct target *target, const ucl_object_t *obj)
{
 struct lun *lun;
 uint64_t tmp;

 if (obj->type == UCL_INT) {
  char *name;

  tmp = ucl_object_toint(obj);
  if (tmp >= MAX_LUNS) {
   log_warnx("LU number %ju in target \"%s\" is too big",
       tmp, target->t_name);
   return (1);
  }

  asprintf(&name, "%s,lun,%ju", target->t_name, tmp);
  lun = lun_new(conf, name);
  if (lun == ((void*)0))
   return (1);

  lun_set_scsiname(lun, name);
  target->t_luns[tmp] = lun;
  return (0);
 }

 if (obj->type == UCL_OBJECT) {
  const ucl_object_t *num = ucl_object_find_key(obj, "number");
  const ucl_object_t *name = ucl_object_find_key(obj, "name");

  if (num == ((void*)0) || num->type != UCL_INT) {
   log_warnx("lun section in target \"%s\" is missing "
       "\"number\" integer property", target->t_name);
   return (1);
  }
  tmp = ucl_object_toint(num);
  if (tmp >= MAX_LUNS) {
   log_warnx("LU number %ju in target \"%s\" is too big",
       tmp, target->t_name);
   return (1);
  }

  if (name == ((void*)0) || name->type != UCL_STRING) {
   log_warnx("lun section in target \"%s\" is missing "
       "\"name\" string property", target->t_name);
   return (1);
  }

  lun = lun_find(conf, ucl_object_tostring(name));
  if (lun == ((void*)0))
   return (1);

  target->t_luns[tmp] = lun;
 }

 return (0);
}
