
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uid_t ;
typedef scalar_t__ time_t ;
struct passwd {char* pw_name; } ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_5__ {scalar_t__ endtime; } ;
struct TYPE_6__ {TYPE_1__ times; int client; int server; } ;
typedef TYPE_2__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int krb5_cc_cursor ;


 int free (char*) ;
 struct passwd* getpwuid (int ) ;
 int krb5_cc_close (int ,int ) ;
 int krb5_cc_end_seq_get (int ,int ,int *) ;
 scalar_t__ krb5_cc_next_cred (int ,int ,int *,TYPE_2__*) ;
 scalar_t__ krb5_cc_resolve (int ,char const*,int *) ;
 scalar_t__ krb5_cc_start_seq_get (int ,int ,int *) ;
 int krb5_free_context (int ) ;
 int krb5_free_cred_contents (int ,TYPE_2__*) ;
 scalar_t__ krb5_init_context (int *) ;
 scalar_t__ krb5_unparse_name (int ,int ,char**) ;
 char* pref_realm ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int
is_a_valid_tgt_cache(const char *filepath, uid_t uid, int *retrating,
    time_t *retexptime)
{

 krb5_context context;
 krb5_principal princ;
 krb5_ccache ccache;
 krb5_error_code retval;
 krb5_cc_cursor curse;
 krb5_creds krbcred;
 int gotone, orating, rating, ret;
 struct passwd *pw;
 char *cp, *cp2, *pname;
 time_t exptime;


 pw = getpwuid(uid);






 retval = krb5_init_context(&context);
 if (retval != 0)
  return (0);
 retval = krb5_cc_resolve(context, filepath, &ccache);
 if (retval != 0) {
  krb5_free_context(context);
  return (0);
 }
 ret = 0;
 orating = 0;
 exptime = 0;
 retval = krb5_cc_start_seq_get(context, ccache, &curse);
 if (retval == 0) {
  while ((retval = krb5_cc_next_cred(context, ccache, &curse,
      &krbcred)) == 0) {
   gotone = 0;
   rating = 0;
   retval = krb5_unparse_name(context, krbcred.server,
       &pname);
   if (retval == 0) {
    cp = strchr(pname, '/');
    if (cp != ((void*)0)) {
     *cp++ = '\0';
     if (strcmp(pname, "krbtgt") == 0 &&
         krbcred.times.endtime > time(((void*)0))
         ) {
      gotone = 1;





      cp2 = strchr(cp, '@');
      if (cp2 != ((void*)0)) {
       *cp2++ = '\0';
       if (strcmp(cp, cp2) ==
           0)
        rating++;
      }
     }
    }
    free(pname);
   }
   if (gotone != 0) {
    retval = krb5_unparse_name(context,
        krbcred.client, &pname);
    if (retval == 0) {
     cp = strchr(pname, '@');
     if (cp != ((void*)0)) {
      *cp++ = '\0';
      if (pw != ((void*)0) && strcmp(pname,
          pw->pw_name) == 0)
       rating++;
      if (strchr(pname, '/') == ((void*)0))
       rating++;
      if (pref_realm[0] != '\0' &&
          strcmp(cp, pref_realm) == 0)
       rating++;
     }
    }
    free(pname);
    if (rating > orating) {
     orating = rating;
     exptime = krbcred.times.endtime;
    } else if (rating == orating &&
        krbcred.times.endtime > exptime)
     exptime = krbcred.times.endtime;
    ret = 1;
   }
   krb5_free_cred_contents(context, &krbcred);
  }
  krb5_cc_end_seq_get(context, ccache, &curse);
 }
 krb5_cc_close(context, ccache);
 krb5_free_context(context);
 if (ret != 0) {
  *retrating = orating;
  *retexptime = exptime;
 }
 return (ret);



}
