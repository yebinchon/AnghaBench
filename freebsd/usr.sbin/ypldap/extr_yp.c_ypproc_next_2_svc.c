
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ypresp_key_val {void* stat; } ;
typedef struct ypresp_key_val ypresp_key_val ;
struct TYPE_5__ {int keydat_len; int keydat_val; } ;
struct TYPE_6__ {int map; TYPE_1__ key; int domain; } ;
typedef TYPE_2__ ypreq_key ;
struct ypresp_val {int dummy; } ;
struct userent {char* ue_line; char* ge_line; } ;
struct svc_req {int dummy; } ;
struct groupent {char* ue_line; char* ge_line; } ;
struct TYPE_7__ {int sc_group_names; int sc_user_names; } ;


 struct userent* RB_FIND (int ,int ,struct userent*) ;
 int RB_INSERT (int ,int ,struct userent*) ;
 struct userent* RB_NEXT (int ,int *,struct userent*) ;
 int RB_REMOVE (int ,int ,struct userent*) ;
 void* YP_NOKEY ;
 void* YP_NOMAP ;
 void* YP_YPERR ;
 char* calloc (int ,int) ;
 TYPE_4__* env ;
 int free (char*) ;
 int group_name_tree ;
 int log_debug (char*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (char*) ;
 int strncpy (char*,int ,int ) ;
 int user_name_tree ;
 int yp_make_keyval (struct ypresp_key_val*,char*,char*) ;
 int yp_valid_domain (int ,struct ypresp_val*) ;

ypresp_key_val *
ypproc_next_2_svc(ypreq_key *arg, struct svc_req *req)
{
 struct userent ukey;
 struct userent *ue;
 struct groupent gkey;
 struct groupent *ge;
 char *line;
 static struct ypresp_key_val res;
 char *key;

 if (yp_valid_domain(arg->domain, (struct ypresp_val *)&res) == -1)
  return (&res);

 key = ((void*)0);
 if (strcmp(arg->map, "passwd.byname") == 0 ||
     strcmp(arg->map, "master.passwd.byname") == 0) {
  key = calloc(arg->key.keydat_len + 1, 1);
  if (key == ((void*)0)) {
   res.stat = YP_YPERR;
   return (&res);
  }
  (void)strncpy(key, arg->key.keydat_val,
      arg->key.keydat_len);
  ukey.ue_line = key;
  if ((ue = RB_FIND(user_name_tree, env->sc_user_names,
      &ukey)) == ((void*)0)) {
   RB_INSERT(user_name_tree, env->sc_user_names, &ukey);
   if ((ue = RB_NEXT(user_name_tree, &env->sc_user_names,
       &ukey)) == ((void*)0)) {
    RB_REMOVE(user_name_tree, env->sc_user_names,
        &ukey);
    res.stat = YP_NOKEY;
    free(key);
    return (&res);
   }
   RB_REMOVE(user_name_tree, env->sc_user_names, &ukey);
  }
  line = ue->ue_line + (strlen(ue->ue_line) + 1);
  line = line + (strlen(line) + 1);
  yp_make_keyval(&res, line, line);
  free(key);
  return (&res);


 } else if (strcmp(arg->map, "group.byname") == 0) {
  key = calloc(arg->key.keydat_len + 1, 1);
  if (key == ((void*)0)) {
   res.stat = YP_YPERR;
   return (&res);
  }
  (void)strncpy(key, arg->key.keydat_val,
      arg->key.keydat_len);

  gkey.ge_line = key;
  if ((ge = RB_FIND(group_name_tree, env->sc_group_names,
      &gkey)) == ((void*)0)) {



   RB_INSERT(group_name_tree, env->sc_group_names, &gkey);
   if ((ge = RB_NEXT(group_name_tree, &env->sc_group_names,
       &gkey)) == ((void*)0)) {
    RB_REMOVE(group_name_tree, env->sc_group_names,
        &gkey);
    res.stat = YP_NOKEY;
    free(key);
    return (&res);
   }
   RB_REMOVE(group_name_tree, env->sc_group_names, &gkey);
  }

  line = ge->ge_line + (strlen(ge->ge_line) + 1);
  line = line + (strlen(line) + 1);
  yp_make_keyval(&res, line, line);
  free(key);
  return (&res);
 } else {
  log_debug("unknown map %s", arg->map);
  res.stat = YP_NOMAP;
  return (&res);
 }
}
