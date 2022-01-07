
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_group {scalar_t__ ag_type; TYPE_1__* ag_target; int * ag_name; } ;
typedef struct auth {void* a_secret; void* a_user; } const auth ;
struct TYPE_2__ {int * t_name; } ;


 scalar_t__ AG_TYPE_CHAP ;
 scalar_t__ AG_TYPE_UNKNOWN ;
 int auth_check_secret_length (struct auth const*) ;
 struct auth const* auth_new (struct auth_group*) ;
 void* checked_strdup (char const*) ;
 int log_warnx (char*,int *) ;

const struct auth *
auth_new_chap(struct auth_group *ag, const char *user,
    const char *secret)
{
 struct auth *auth;

 if (ag->ag_type == AG_TYPE_UNKNOWN)
  ag->ag_type = AG_TYPE_CHAP;
 if (ag->ag_type != AG_TYPE_CHAP) {
  if (ag->ag_name != ((void*)0))
   log_warnx("cannot mix \"chap\" authentication with "
       "other types for auth-group \"%s\"", ag->ag_name);
  else
   log_warnx("cannot mix \"chap\" authentication with "
       "other types for target \"%s\"",
       ag->ag_target->t_name);
  return (((void*)0));
 }

 auth = auth_new(ag);
 auth->a_user = checked_strdup(user);
 auth->a_secret = checked_strdup(secret);

 auth_check_secret_length(auth);

 return (auth);
}
