
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct auth {TYPE_2__* a_auth_group; int a_user; int * a_mutual_secret; int * a_secret; } ;
struct TYPE_4__ {TYPE_1__* ag_target; int * ag_name; } ;
struct TYPE_3__ {int * t_name; } ;


 int log_warnx (char*,int ,int *) ;
 size_t strlen (int *) ;

__attribute__((used)) static void
auth_check_secret_length(struct auth *auth)
{
 size_t len;

 len = strlen(auth->a_secret);
 if (len > 16) {
  if (auth->a_auth_group->ag_name != ((void*)0))
   log_warnx("secret for user \"%s\", auth-group \"%s\", "
       "is too long; it should be at most 16 characters "
       "long", auth->a_user, auth->a_auth_group->ag_name);
  else
   log_warnx("secret for user \"%s\", target \"%s\", "
       "is too long; it should be at most 16 characters "
       "long", auth->a_user,
       auth->a_auth_group->ag_target->t_name);
 }
 if (len < 12) {
  if (auth->a_auth_group->ag_name != ((void*)0))
   log_warnx("secret for user \"%s\", auth-group \"%s\", "
       "is too short; it should be at least 12 characters "
       "long", auth->a_user,
       auth->a_auth_group->ag_name);
  else
   log_warnx("secret for user \"%s\", target \"%s\", "
       "is too short; it should be at least 12 characters "
       "long", auth->a_user,
       auth->a_auth_group->ag_target->t_name);
 }

 if (auth->a_mutual_secret != ((void*)0)) {
  len = strlen(auth->a_mutual_secret);
  if (len > 16) {
   if (auth->a_auth_group->ag_name != ((void*)0))
    log_warnx("mutual secret for user \"%s\", "
        "auth-group \"%s\", is too long; it should "
        "be at most 16 characters long",
        auth->a_user, auth->a_auth_group->ag_name);
   else
    log_warnx("mutual secret for user \"%s\", "
        "target \"%s\", is too long; it should "
        "be at most 16 characters long",
        auth->a_user,
        auth->a_auth_group->ag_target->t_name);
  }
  if (len < 12) {
   if (auth->a_auth_group->ag_name != ((void*)0))
    log_warnx("mutual secret for user \"%s\", "
        "auth-group \"%s\", is too short; it "
        "should be at least 12 characters long",
        auth->a_user, auth->a_auth_group->ag_name);
   else
    log_warnx("mutual secret for user \"%s\", "
        "target \"%s\", is too short; it should be "
        "at least 12 characters long",
        auth->a_user,
        auth->a_auth_group->ag_target->t_name);
  }
 }
}
