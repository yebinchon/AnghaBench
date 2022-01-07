
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_group {int ag_type; TYPE_1__* ag_target; int * ag_name; } ;
struct TYPE_2__ {int * t_name; } ;


 int AG_TYPE_CHAP ;
 int AG_TYPE_CHAP_MUTUAL ;
 int AG_TYPE_DENY ;
 int AG_TYPE_NO_AUTHENTICATION ;
 int AG_TYPE_UNKNOWN ;
 int log_warnx (char*,char const*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

int
auth_group_set_type(struct auth_group *ag, const char *str)
{
 int type;

 if (strcmp(str, "none") == 0) {
  type = AG_TYPE_NO_AUTHENTICATION;
 } else if (strcmp(str, "deny") == 0) {
  type = AG_TYPE_DENY;
 } else if (strcmp(str, "chap") == 0) {
  type = AG_TYPE_CHAP;
 } else if (strcmp(str, "chap-mutual") == 0) {
  type = AG_TYPE_CHAP_MUTUAL;
 } else {
  if (ag->ag_name != ((void*)0))
   log_warnx("invalid auth-type \"%s\" for auth-group "
       "\"%s\"", str, ag->ag_name);
  else
   log_warnx("invalid auth-type \"%s\" for target "
       "\"%s\"", str, ag->ag_target->t_name);
  return (1);
 }

 if (ag->ag_type != AG_TYPE_UNKNOWN && ag->ag_type != type) {
  if (ag->ag_name != ((void*)0)) {
   log_warnx("cannot set auth-type to \"%s\" for "
       "auth-group \"%s\"; already has a different "
       "type", str, ag->ag_name);
  } else {
   log_warnx("cannot set auth-type to \"%s\" for target "
       "\"%s\"; already has a different type",
       str, ag->ag_target->t_name);
  }
  return (1);
 }

 ag->ag_type = type;

 return (0);
}
