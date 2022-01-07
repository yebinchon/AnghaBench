
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef int krb5_keytab ;
typedef int krb5_get_init_creds_opt ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_deltat ;
typedef int krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 int krb5_cc_close (int ,int ) ;
 scalar_t__ krb5_cc_default (int ,int *) ;
 scalar_t__ krb5_cc_initialize (int ,int ,int ) ;
 scalar_t__ krb5_cc_store_cred (int ,int ,int *) ;
 int krb5_free_context (int ) ;
 int krb5_free_cred_contents (int ,int *) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_get_init_creds_keytab (int ,int *,int ,int ,int ,int *,int *) ;
 scalar_t__ krb5_get_init_creds_opt_alloc (int ,int **) ;
 int krb5_get_init_creds_opt_free (int ,int *) ;
 int krb5_get_init_creds_opt_set_default_flags (int ,char*,int ,int *) ;
 scalar_t__ krb5_init_context (int *) ;
 int krb5_kt_close (int ,int ) ;
 scalar_t__ krb5_kt_default (int ,int *) ;
 scalar_t__ krb5_parse_name (int ,char const*,int *) ;
 int krb5_principal_get_realm (int ,int ) ;

__attribute__((used)) static krb5_error_code
gssd_get_cc_from_keytab(const char *name)
{
 krb5_error_code ret, opt_ret, princ_ret, cc_ret, kt_ret, cred_ret;
 krb5_context context;
 krb5_principal principal;
 krb5_keytab kt;
 krb5_creds cred;
 krb5_get_init_creds_opt *opt;
 krb5_deltat start_time = 0;
 krb5_ccache ccache;

 ret = krb5_init_context(&context);
 if (ret != 0)
  return (ret);
 opt_ret = cc_ret = kt_ret = cred_ret = 1;
 princ_ret = ret = krb5_parse_name(context, name, &principal);
 if (ret == 0)
  opt_ret = ret = krb5_get_init_creds_opt_alloc(context, &opt);
 if (ret == 0)
  cc_ret = ret = krb5_cc_default(context, &ccache);
 if (ret == 0)
  ret = krb5_cc_initialize(context, ccache, principal);
 if (ret == 0) {
  krb5_get_init_creds_opt_set_default_flags(context, "gssd",
      krb5_principal_get_realm(context, principal), opt);
  kt_ret = ret = krb5_kt_default(context, &kt);
 }
 if (ret == 0)
  cred_ret = ret = krb5_get_init_creds_keytab(context, &cred,
      principal, kt, start_time, ((void*)0), opt);
 if (ret == 0)
  ret = krb5_cc_store_cred(context, ccache, &cred);
 if (kt_ret == 0)
  krb5_kt_close(context, kt);
 if (cc_ret == 0)
  krb5_cc_close(context, ccache);
 if (opt_ret == 0)
  krb5_get_init_creds_opt_free(context, opt);
 if (princ_ret == 0)
  krb5_free_principal(context, principal);
 if (cred_ret == 0)
  krb5_free_cred_contents(context, &cred);
 krb5_free_context(context);
 return (ret);
}
