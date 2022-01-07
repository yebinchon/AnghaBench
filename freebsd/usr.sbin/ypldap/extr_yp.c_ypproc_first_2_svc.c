
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ypresp_key_val {int stat; } ;
typedef struct ypresp_key_val ypresp_key_val ;
struct TYPE_4__ {int map; int domain; } ;
typedef TYPE_1__ ypreq_nokey ;
struct ypresp_val {int dummy; } ;
struct svc_req {int dummy; } ;
struct TYPE_5__ {int * sc_group_lines; int * sc_user_lines; } ;


 int YP_NOMAP ;
 TYPE_3__* env ;
 int log_debug (char*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int yp_make_keyval (struct ypresp_key_val*,int *,int *) ;
 int yp_valid_domain (int ,struct ypresp_val*) ;

ypresp_key_val *
ypproc_first_2_svc(ypreq_nokey *arg, struct svc_req *req)
{
 static struct ypresp_key_val res;

 if (yp_valid_domain(arg->domain, (struct ypresp_val *)&res) == -1)
  return (&res);

 if (strcmp(arg->map, "passwd.byname") == 0 ||
     strcmp(arg->map, "master.passwd.byname") == 0) {
  if (env->sc_user_lines == ((void*)0))
   return (((void*)0));

  yp_make_keyval(&res, env->sc_user_lines, env->sc_user_lines);
 } else if (strcmp(arg->map, "group.byname") == 0) {
  if (env->sc_group_lines == ((void*)0))
   return (((void*)0));

  yp_make_keyval(&res, env->sc_group_lines, env->sc_group_lines);
 } else {
  log_debug("unknown map %s", arg->map);
  res.stat = YP_NOMAP;
 }

 return (&res);
}
